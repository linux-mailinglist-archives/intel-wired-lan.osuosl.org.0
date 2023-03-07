Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E916AE0FE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 14:45:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01ED94174C;
	Tue,  7 Mar 2023 13:45:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01ED94174C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678196718;
	bh=CuR4Oj3EcjE2cZNd2+uCLGAahwM50TFVO74uvMi5wa4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=bWGkaCFDdIQwwe/K2BSUtejmWhKikugPPK6F241Ync3TtNtuUBjDL3QdIkxBGexHj
	 eDHrweEQg1FUIX6slZOBrsMhDt82Z9QqgQtENUDmpGDLLFmkuJER1zG/Lrhx1wBKAX
	 Tm9TU5vcyKK+d9LtplOWZjuKpGgNhqZ16jr4ZZMM2ZyrxiAGE7gRHYOOsTwKZOWvBn
	 0uNexrPZ1PDVJyZlTC48LsDgqFGVo7Pn6baQggjwZvmR1HxnHPpD944JlynK/gMbAH
	 8WI77AeODEqqbl2m2KgQ/td83J2iQpwWcBhnjlyKZ3bfrCOvMVKCtvyb68rBC/OTFB
	 5gT1hPoxi6Lcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17k9pCWQTvfk; Tue,  7 Mar 2023 13:45:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB5AC41742;
	Tue,  7 Mar 2023 13:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB5AC41742
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F1EA41BF46D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 13:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6AB781768
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 13:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6AB781768
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LkRKAVCSswzt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 13:45:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1346281468
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1346281468
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 13:45:10 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-407-h5hR5eD8O2uvXWN4CpUT_A-1; Tue, 07 Mar 2023 08:45:06 -0500
X-MC-Unique: h5hR5eD8O2uvXWN4CpUT_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3EA28803520;
 Tue,  7 Mar 2023 13:45:05 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 61ADCC15BAD;
 Tue,  7 Mar 2023 13:45:04 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id F0CD1A80B97; Tue,  7 Mar 2023 14:45:02 +0100 (CET)
Date: Tue, 7 Mar 2023 14:45:02 +0100
From: Corinna Vinschen <vinschen@redhat.com>
To: Lin Ma <linma@zju.edu.cn>
Message-ID: <ZAc/3oVos9DBx3iR@calimero.vinschen.de>
Mail-Followup-To: Lin Ma <linma@zju.edu.cn>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 richardcochran@gmail.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com,
 intel-wired-lan@lists.osuosl.org, pmenzel@molgen.mpg.de,
 regressions@lists.linux.dev, stable@vger.kernel.org
References: <301b585a.80249.186bbe6cc50.Coremail.linma@zju.edu.cn>
 <20230307130547.31446-1-linma@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307130547.31446-1-linma@zju.edu.cn>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1678196709;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=CjSk2U3oMAFmhtNturhD3NcmwhqwU56rdcLTkQIFSg8=;
 b=MFrsJMT/90oNGAw8PKaaSl22u94CA08FtIpc3zp8//UbZqoi6ZGLw5NEE7hBCerOTm4hhM
 lb5icVTWehoGnJi+ggvgHWTH7kRoJQ24xmf2oCb8rNI41Psb7Ghte4V28Xr7d2LHbAdiNc
 iSfBN+3ZcXc4XImLO4mpGoW4vGTPc6E=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MFrsJMT/
Subject: Re: [Intel-wired-lan] [PATCH] igb: revert rtnl_lock() that causes
 deadlock
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
Reply-To: intel-wired-lan@lists.osuosl.org
Cc: pmenzel@molgen.mpg.de, ast@kernel.org, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, richardcochran@gmail.com,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, regressions@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mar  7 21:05, Lin Ma wrote:
> The commit 6faee3d4ee8b ("igb: Add lock to avoid data race") adds
> rtnl_lock to eliminate a false data race shown below
> 
>  (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>  igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>   kfree(adapter->vf_data)          |
>   adapter->vfs_allocated_count = 0 |
>                                    |    memcpy(... adapter->vf_data[vf]
> 
> The above race will never happen and the extra rtnl_lock causes deadlock
> below
> [...]
> CC: stable@vger.kernel.org
> Fixes: 6faee3d4ee8b ("igb: Add lock to avoid data race")
> Reported-by: Corinna <vinschen@redhat.com>

Thank you, but "Corinna Vinschen", please.


Thanks,
Corinna

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
