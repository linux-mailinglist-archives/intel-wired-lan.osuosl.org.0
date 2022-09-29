Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F5A5EEFBB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 09:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8E8C83F17;
	Thu, 29 Sep 2022 07:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8E8C83F17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664438001;
	bh=UZIAiT33pIUV2/55QES0cekPSthsLO/XRR2Oo9C4i2s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uZHxNV1SP7SjpnBDgeeGrnu+c++EoAMeiUvjSnu6QGfj8CMbo1GNn/w0NbEOdF/mB
	 pURhA8qCnrw2Tz4VfGHzLechVf6mDNe+NeomvtYCyJeU63P8o7Ork/tXi0Hy0IVfeS
	 Y/5Jbisswd1np07cd/zrtxneOzBcpBrQXxEkTks6cM5JBr9F5gMVy97NImdfv9lWib
	 rW49l894YS22/YCCFWmKhW+FoHSxj40EElIPr9me4FIds3RmRC3JpAG9I6sDleXuRy
	 9cDhelHsStp6FshNLwNr/KfdbQqzhzDCn1A5cHL2S7HHz6Vr0UiWGB26nHQYlOeqsP
	 XaohS0ZvRolLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BshwskcTFBlp; Thu, 29 Sep 2022 07:53:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9653E83EFE;
	Thu, 29 Sep 2022 07:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9653E83EFE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02DDA1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 07:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDBB760AB7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 07:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDBB760AB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZLdWfeBEina for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 07:53:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ED6760A71
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1ED6760A71
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 07:53:14 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-42-5dcL323bPQ2nWLfnv8dFUg-1; Thu, 29 Sep 2022 03:53:10 -0400
X-MC-Unique: 5dcL323bPQ2nWLfnv8dFUg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53676185A794;
 Thu, 29 Sep 2022 07:53:10 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.40.192.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 38063207B34A;
 Thu, 29 Sep 2022 07:53:09 +0000 (UTC)
Date: Thu, 29 Sep 2022 09:53:07 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220929095307.2c60d651@p1.luc.cera.cz>
In-Reply-To: <20220913140206.64330-1-kamil.maziarz@intel.com>
References: <20220913140206.64330-1-kamil.maziarz@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1664437993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=L1zhQIXI1JbKkBA3zFvjEnGbRNywHn+9ETBg5i6Hm+0=;
 b=Gs/BMdlRISAmekfi9Lscj2ROqX2q7BZcuCSdm0DQiKXNkEQeuyaUCsjFWVIei5BaId/KLk
 v0WiDo1ShTi6QKfeRST+10hqPsXNwfrnwnBhzVld6EonQG/e6ElhoKPhyVESiq0xcfwXvU
 958BtryCyyIFJYxNNuGvVNXO1sr9xLU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Gs/BMdlR
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>, intel-wired-lan@lists.osuosl.org,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 13 Sep 2022 16:02:06 +0200
Kamil Maziarz <kamil.maziarz@intel.com> wrote:

> From: Michal Jaron <michalx.jaron@intel.com>
> 
> ...

Tony, I'd like to ask what did happen with this commit? During Monday you applied the patch to
40GBe branch as:

commit ce8d8ae335f469a399805f56e74b98390f327184
Author: Michal Jaron <michalx.jaron@intel.com>
Date:   Tue Sep 13 16:02:06 2022 +0200

    i40e: Fix not setting xps_cpus after reset
    
    During tx rings configuration default XPS queue config is set and
    __I40E_TX_XPS_INIT_DONE is locked. XPS CPUs maps are cleared in
    every reset by netdev_set_num_tc() call regardless it was set by
    user or driver. If reset with reinit occurs __I40E_TX_XPS_INIT_DONE
    flag is removed and XPS mapping is set to default again but after
    reset without reinit this flag is still set and XPS CPUs to queues
    mapping stays cleared.
    
    Add code to preserve xps_cpus mapping as cpumask for every queue
    and restore those mapping at the end of reset.
    
    Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
    Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
    Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
    Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
    Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

but later the branch was force-pushed, the commit is not present there anymore nor
in upstream... Was it silently dropped? What was the reason?

Thanks for clarification.

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
