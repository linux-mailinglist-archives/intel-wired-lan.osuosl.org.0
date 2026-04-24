Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM+5Fqcq62keJgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 10:32:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F78445B874
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 10:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8204D42368;
	Fri, 24 Apr 2026 08:32:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iYyX9p3ZBVs3; Fri, 24 Apr 2026 08:32:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08B9F42369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777019552;
	bh=VJsfL0ZYr6ksiH6VKINKLh9cflWXlJdEnCTwwmMW534=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B55CEKG53zdhgr6H26vB1a83WweaACN4706vVG4xNHBXBC7c80Ecn7QKvC7aW7ojg
	 acAhlOdSKQv9k3yebtGFzuj3kSYOAoIPWnZZgtXa09ePyqvxDJxKAaJ5uLiNDmqYZY
	 zFV7/BiFQxwgb+U/2TYja2vS3FrpoIZCBEnKJ4mTGsMZINOwPnHVyEjEwKKHsU9Zyo
	 rERUOGcz6GKu0BOYxT9f9YXTyXfhvpUBa9tKGxrr4DvcLEbUSuUkj3friHqE2UFhbW
	 /K3rdEaAv0MZ9eBT6s9+p3Y3MOxdXKzFw8II7SJC7Ve5X1a6DrsynC34Qiy4fZpeH/
	 4GDC119vejKTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08B9F42369;
	Fri, 24 Apr 2026 08:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 08EB2231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 08:32:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EED9242367
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 08:32:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1uEjz1HBCay for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 08:32:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4246742360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4246742360
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4246742360
 for <intel-wired-lan@osuosl.org>; Fri, 24 Apr 2026 08:32:24 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-192-ewUZX9sePIKYDg19RBQe5A-1; Fri,
 24 Apr 2026 04:32:19 -0400
X-MC-Unique: ewUZX9sePIKYDg19RBQe5A-1
X-Mimecast-MFC-AGG-ID: ewUZX9sePIKYDg19RBQe5A_1777019538
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id EB87E1800578; Fri, 24 Apr 2026 08:32:17 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.44.32.45])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 68CDB19560AB; Fri, 24 Apr 2026 08:32:17 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id C0469A80BFD; Fri, 24 Apr 2026 10:32:14 +0200 (CEST)
Date: Fri, 24 Apr 2026 10:32:14 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@osuosl.org, stable@vger.kernel.org,
 Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 netdev@vger.kernel.org, Corinna Vinschen <vinschen@redhat.com>
Message-ID: <aesqjovwYNeLlfX4@calimero.vinschen.de>
Mail-Followup-To: Simon Horman <horms@kernel.org>,
 intel-wired-lan@osuosl.org, stable@vger.kernel.org,
 Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 netdev@vger.kernel.org
References: <IA3PR11MB898664A49E614F197D4FED6EE52C2@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260421111236.875379-1-vinschen@redhat.com>
 <20260423185530.GI900403@horms.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260423185530.GI900403@horms.kernel.org>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: ikc8P_SL9paTEYabDM3FOaJ4wMMZgf-gSrQfZSEAoCQ_1777019538
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777019543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VJsfL0ZYr6ksiH6VKINKLh9cflWXlJdEnCTwwmMW534=;
 b=BguoAUtS9RwjeXVxIdyJ7uYL9emrpcDsP8J4JmAo6n2WAaNBSE5gYhN62lRykutzKGXcCN
 /FSjHQfXhFGRByWfrLEfc31W4/d7MWOlm/U5j09bxRqejXFKY9PFHSD8vj0A96PgYSPuDa
 yjNUFZm+tbGEYDgF1iOCgIFKmBrHhS4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=BguoAUtS
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
X-Rspamd-Queue-Id: 5F78445B874
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:vinschen@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,calimero.vinschen.de:mid];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinschen@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[11]

On Apr 23 19:55, Simon Horman wrote:
> On Tue, Apr 21, 2026 at 01:12:36PM +0200, Corinna Vinschen wrote:
> > This is just a simple cleanup fix.  Commit 35a2443d0910f ("iavf: Add
> > waiting for response from PF in set mac") introduced a duplicate
> > ether_addr_equal() check, so the current code tests the new MAC twice
> > against the former MAC.
> > 
> > Remove the outer ether_addr_equal() test, remnant of commit c5c922b3e09b
> > ("iavf: fix MAC address setting for VFs when filter is rejected")
> > 
> > Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> > Fixes: 35a2443d0910f ("iavf: Add waiting for response from PF in set mac")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > Added CC: stable@vger.kernel.org
> 
> Hi,
> 
> This feels more like a cleanup for net-next (without a Fixes tag)
> than a fix for net. I'm missing where the bug is here.

Yeah, it's not a bug, the "Fixes" tag was just supposed to point out the
patch introducing the duplicate test.

Shall I create a v3 or is it ok as is and just goes to net-next instead
of net?


Thanks,
Corinna

