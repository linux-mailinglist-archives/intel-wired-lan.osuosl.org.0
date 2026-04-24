Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIQUGdVk62mtMAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 14:40:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E7A45E915
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 14:40:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C264F84A26;
	Fri, 24 Apr 2026 12:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F8ZX-i5hK3ff; Fri, 24 Apr 2026 12:40:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AB7284A41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777034449;
	bh=Os6slKuiLGxBWiHsIraIVXqi+PiGactCEycWMtcaDv8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RC9I0AC3hZZzg+MfRO6O8F8XkgJUVX9zD0NpvwO+Bj6JaX30OIwEa2pgaNJj6IMLi
	 rEHqddmMF8KBRAWWCw+I5c6JOk+rCrCiCfQ/Jsha00Q8yuetE6j1lYHMR0tJBHFi1c
	 6v7+0Zc52XZ+t6yYYqj/ViVL+8ciEB29AzTSB2GH1+v91DafvM8nnO4adkOQMaTd4A
	 CfFTa35Py82rrO5QLby+frBtwxcZSAPNjPJaflhPqjXPe2U/lITb9TKOGxzTwzQf2I
	 UJSb0jZggbGU//Jyp9tjpqMWGhvRShs7E0f4VYFBFvYCuR2kxPpOnRJfYa1q2ApLmn
	 kgH7eOI6qwvqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AB7284A41;
	Fri, 24 Apr 2026 12:40:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6624B231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 12:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B70E422AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 12:40:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MUm72BCuTZCA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 12:40:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3813840194
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3813840194
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3813840194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 12:40:45 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-99-KXYT9KXtN8O36aMG-Drc7w-1; Fri,
 24 Apr 2026 08:40:40 -0400
X-MC-Unique: KXYT9KXtN8O36aMG-Drc7w-1
X-Mimecast-MFC-AGG-ID: KXYT9KXtN8O36aMG-Drc7w_1777034438
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 84E00180034F; Fri, 24 Apr 2026 12:40:38 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.29])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5FFE519560AB; Fri, 24 Apr 2026 12:40:32 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: aleksandr.loktionov@intel.com
Cc: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 jacob.e.keller@intel.com, jesse.brandeburg@intel.com, jtornosm@redhat.com,
 kuba@kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Date: Fri, 24 Apr 2026 14:40:31 +0200
Message-ID: <20260424124031.834241-1-jtornosm@redhat.com>
In-Reply-To: <IA3PR11MB89861630A18B1BE712F14E68E52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB89861630A18B1BE712F14E68E52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-MFC-PROC-ID: DMrccyLsOTTYYXsb6rdGa0a40r7Ecs31HHGjeD79mdA_1777034438
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1777034444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Os6slKuiLGxBWiHsIraIVXqi+PiGactCEycWMtcaDv8=;
 b=ZJU0KSzpJdfLiKq2HD5QvDPb50JR5k82l+8zYYAEdbpQuw6xWNwg3ko/yQBSCNupRLH8+t
 5kQXbHt4aDPNFvvpHhFvUZrbRnI7uFMdRHmBcr0JPrruvGKUE2PB6EjWAUqoNmrSlz/ivc
 BS0EFNMfVZIwyzlbDnSpTXgL7ft8Prw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=ZJU0KSzp
Subject: Re: [Intel-wired-lan] [PATCH net v4 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Rspamd-Queue-Id: 45E7A45E915
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:jesse.brandeburg@intel.com,m:jtornosm@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]

Hello Aleksandr,

>>> You declare ice_vf_clear_all_promisc_modes() returning int, but
>>> ignore the return value.
>>> Looks suspicious isn't it?
>> Well, it is used like that when the funciton is called locally (the
>> function is not modifiedi, just made public), and really my intention
>> was to clean as much as possible (so error checking is not necessary).
>> In my opinion it would be enough to warn about the possible problems
>> (already done in the existing function).
> Can you go extra mile and add error code handling?
> Or at least document it in the code why you don't do it?
Ok, I can add the error handling in ice_setup_vf_trust and an extra warning
to indicate that promiscuous mode clear failed when revoking trust.
Just let me wait a bit longer for more possible reviews to create the next
version of the series.

Thanks

Best regards
Jose Ignacio

