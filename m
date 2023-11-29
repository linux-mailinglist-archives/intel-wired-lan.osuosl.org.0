Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9D47FD113
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 09:39:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DB2E843BB;
	Wed, 29 Nov 2023 08:39:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DB2E843BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701247155;
	bh=4Yo7ovQssQ3FrAaZYozdIQojitoEHL5vXByuQwy5G48=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4wlcKGBPS6n768uNZh8LNespkJ3vDjSFl1W4Bfp85EgO4qpmjQhioDCy6Kf6ADqXp
	 gWPPNfft1wbzMgA0WKJzP0l+R8d6bvhV37btwBwJZhnxW222pJois4+akhVPrctFd8
	 o3fMpa1DOOd7PG3Mc1ptrGC/60ujFEH2EEKnNZww+aby47vHisr3aLdD5P5VjK2a/W
	 0WIp2j6SzioxjEWwra1g0zbgogJ6I7+nSKTh6zGS9KMaq1/3Poe+HKcNiIV+Ax/x2V
	 NrjiazNTo+JMy1LLW63plwG03P8U9L0Qe2nt1ILjAoTCGFjqoVlP8g2Q5hEZiD4C0n
	 k6FQy+XKghOFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjR7K7VnqK5C; Wed, 29 Nov 2023 08:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5DE082151;
	Wed, 29 Nov 2023 08:39:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5DE082151
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD7051BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 08:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF60341A3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 08:39:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF60341A3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zg8SdlYHrGgP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 08:39:07 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 142154175D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 08:39:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 142154175D
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-594-N3n6YeDTM3eGVsVLDaEKmQ-1; Wed, 29 Nov 2023 03:39:00 -0500
X-MC-Unique: N3n6YeDTM3eGVsVLDaEKmQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6287C852ACB;
 Wed, 29 Nov 2023 08:38:59 +0000 (UTC)
Received: from [10.45.225.216] (unknown [10.45.225.216])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 89F9D36E4;
 Wed, 29 Nov 2023 08:38:41 +0000 (UTC)
Message-ID: <63bd858a-fe07-4eda-9835-d999e2905860@redhat.com>
Date: Wed, 29 Nov 2023 09:38:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org
References: <25111205-a895-46a2-b53f-49e29ba41b16@suswa.mountain>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <25111205-a895-46a2-b53f-49e29ba41b16@suswa.mountain>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1701247145;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xJX93Tpg94woqfZUkMv1QEDU9HKHF+FZ0rIOC151TyA=;
 b=UEU0yful4qYwSSiFCoVJjpPYIXjnPqCiyZ4Wd2nCyklUfM2gbh9bJQQdFSOlWCiRa983Vp
 YH19ScB9t7r6lNsGXRMEA9nSfyhYhDsUNregi7A6f/TLS/B87XC7R3ZaZZPGir5a1Qishs
 9T1Yw5UitkqXxw50cbBRJf/RhCFU0kE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UEU0yful
Subject: Re: [Intel-wired-lan] [PATCH v5 4/5] i40e: Fix broken support for
 floating VEBs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, oe-kbuild-all@lists.linux.dev,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 27. 11. 23 9:43, Dan Carpenter wrote:
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14720
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14721  	pf = veb->pf;
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14722
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14723  	/* find the
> remaining VSI and check for extras */
> 0aab77d67d37d09 Ivan Vecera      2023-11-24  14724  	
> i40e_pf_for_each_vsi(pf, i, vsi_it)
> 0aab77d67d37d09 Ivan Vecera      2023-11-24  14725  		if
> (vsi_it->uplink_seid == veb->seid) {
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14726  			if
> (vsi_it->flags & I40E_VSI_FLAG_VEB_OWNER)
> 0aab77d67d37d09 Ivan Vecera      2023-11-24  14727  				vsi = vsi_it;
> 
> Do we always find a vsi?  Presumably, yes, but it's not obvious just
> from reading this function.

Yes, if the VEB has uplink (veb->uplink_seid != 0) then it has to have a 
downlink VSI that owns it (vsi->flags has I40E_VSI_FLAG_VEB_OWNER set)

Ivan

> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14728  			n++;
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14729  		}
> 0aab77d67d37d09 Ivan Vecera      2023-11-24  14730
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14731  	/* Floating VEB has
>   to be empty and regular one must have
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14732  	 * single owner
> VSI.
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14733  	 */
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14734  	if
> ((veb->uplink_seid && n != 1) || (!veb->uplink_seid
> && n != 0)) {
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14735  		
> dev_info(&pf->pdev->dev,
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14736  			 "can't remove
> VEB %d with %d VSIs left\n",
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14737  			 veb->seid,
> n);
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14738  		return;
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14739  	}
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14740
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24  14741  	/* For regular VEB
> move the owner VSI to uplink VEB */
> 41c445ff0f482bb Jesse Brandeburg 2013-09-11  14742  	if
> (veb->uplink_seid) {
> 93a1bc91a1ccc5a Ivan Vecera      2023-11-24 @14743  		vsi->flags
> &= ~I40E_VSI_FLAG_VEB_OWNER;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
