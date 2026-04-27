Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIk/M6qH72ksCQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 17:58:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C95C475C1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 17:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8C2960687;
	Mon, 27 Apr 2026 15:58:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wGKUHW43MK7N; Mon, 27 Apr 2026 15:58:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A0BA60685
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777305512;
	bh=HDuNa09IWvsLtfQxm277uKUgt69EWS0YpTX06KhV77M=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eKXn+0z3uN0zUJI62iF9o+V0oMPzfL1OLrolQHFTKBnwuokAlPJemmTGbqe4oKlTM
	 b2dgBigDSdzvcb2KOao6q8GM/UO01yxfeyCzyimoUs53ik4y/BZ5bN8v2OvPgtqLYn
	 YQ7cT6OCv6x6uQIxWyBLfgIwiFnKLkH+O0vogkXtxQLCMiFIsSgIjdDwprIfnTaq/G
	 9ns8bTEtgaQ2eDI37BakQ7vGf0RgcwgpLIJXbB7kgFaq3ZS0P6hNbbm4LUGHHLyM/T
	 ghJSa1ELgKrZ2eE89o3gkCJtt8TJoWbtSqFyKjnyz0bNQeIp2vp//DpHucI6buUYpp
	 SSDaOKtJoMpXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A0BA60685;
	Mon, 27 Apr 2026 15:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E71A231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52662811C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 15:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UpUFfw99L49b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 15:58:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4909B811C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4909B811C8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4909B811C8
 for <intel-wired-lan@osuosl.org>; Mon, 27 Apr 2026 15:58:29 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-z9vv6BunNjibkGWj_hACDg-1; Mon,
 27 Apr 2026 11:58:24 -0400
X-MC-Unique: z9vv6BunNjibkGWj_hACDg-1
X-Mimecast-MFC-AGG-ID: z9vv6BunNjibkGWj_hACDg_1777305500
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 957FF1944A8E; Mon, 27 Apr 2026 15:58:16 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.44.48.98])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 491A719560AB; Mon, 27 Apr 2026 15:58:16 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id C0F71A8096D; Mon, 27 Apr 2026 17:58:13 +0200 (CEST)
Date: Mon, 27 Apr 2026 17:58:13 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 netdev@vger.kernel.org, Corinna Vinschen <vinschen@redhat.com>
Message-ID: <ae-HlZOV-VntF03O@calimero.vinschen.de>
Mail-Followup-To: Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org,
 Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 netdev@vger.kernel.org
References: <IA3PR11MB898664A49E614F197D4FED6EE52C2@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260421111236.875379-1-vinschen@redhat.com>
 <20260423185530.GI900403@horms.kernel.org>
 <aesqjovwYNeLlfX4@calimero.vinschen.de>
 <30b2fade-2545-4f2b-98ad-c6449512c04e@intel.com>
MIME-Version: 1.0
In-Reply-To: <30b2fade-2545-4f2b-98ad-c6449512c04e@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: DIMvUhF-F3bcpTlmKD-JIEccYALxKdv3WcHFlFMcZjE_1777305500
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777305508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HDuNa09IWvsLtfQxm277uKUgt69EWS0YpTX06KhV77M=;
 b=TUB9CUM5jbIeadCygJJ8lSN7/NF+Mlk6eWLopcNa/sOSqeCpig3+IWDPvp0q8OSWpXIxNB
 Cj5/JGEJE2ZKzJNX01HJE3l3Xm4W/5QhtZfCi4J9GbMKeI+62jwvrU+b59lqoxu12RvWiY
 1mKxEvOfEMFDOL1sjL/lsCqCbM6Enl8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TUB9CUM5
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
 drop duplicate ether_addr_equal() test
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 4C95C475C1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:horms@kernel.org,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:vinschen@redhat.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,calimero.vinschen.de:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[11]

On Apr 24 17:37, Jacob Keller wrote:
> On 4/24/2026 1:32 AM, Corinna Vinschen wrote:
> > On Apr 23 19:55, Simon Horman wrote:
> >> On Tue, Apr 21, 2026 at 01:12:36PM +0200, Corinna Vinschen wrote:
> >>> This is just a simple cleanup fix.  Commit 35a2443d0910f ("iavf: Add
> >>> waiting for response from PF in set mac") introduced a duplicate
> >>> ether_addr_equal() check, so the current code tests the new MAC twice
> >>> against the former MAC.
> >>>
> >>> Remove the outer ether_addr_equal() test, remnant of commit c5c922b3e09b
> >>> ("iavf: fix MAC address setting for VFs when filter is rejected")
> >>>
> >>> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> >>> Fixes: 35a2443d0910f ("iavf: Add waiting for response from PF in set mac")
> >>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >>> ---
> >>> Added CC: stable@vger.kernel.org
> >>
> >> Hi,
> >>
> >> This feels more like a cleanup for net-next (without a Fixes tag)
> >> than a fix for net. I'm missing where the bug is here.
> > 
> > Yeah, it's not a bug, the "Fixes" tag was just supposed to point out the
> > patch introducing the duplicate test.
> > 
> > Shall I create a v3 or is it ok as is and just goes to net-next instead
> > of net?
> > 
> > 
> > Thanks,
> > Corinna
> > 
> 
> I can make a note for later and either myself or Tony can forward it
> net-next as part of an Intel Wired LAN update when the merge window
> re-opens and any testing has completed. (Not that there is much needing
> to be tested in this patches case)

That's nice, thank you!


Corinna

