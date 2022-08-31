Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D10CD5A7706
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 09:06:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D83041837;
	Wed, 31 Aug 2022 07:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D83041837
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661929558;
	bh=BL8ZXcpatqp/kp4eYlStgt4znpAgAkaOoNg9o3mfApU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ltsz4qzsynYEnTCwvOSGGVBDpNUkk4RrsSoqAHE0offCkm1gyYY+Ruv8paYTQyHqW
	 s//GmEACV42CS2IZi7ZS3eeuOQDjVRhyy8AhB+BZnQaaDlo/+TDCcK2fMPsDgibTtx
	 R0s6/4EXT/+IwsVaXDs7p56W6TlZrG60mdlqNguSYE61wjpvk4LrukG2eQp1VI9cmC
	 lFfcacqKiGSxbjLmqyiW6QkrDb5QgN+avR2bgL2uIR8SsqxkIuhHzmIchrGiRUb4IN
	 BYLMDR72Oip0k5RpMmZ01qnkn63+ViZuTpAftpwEvMjp8vjoJh8UAXmVfZeTFb6lHw
	 KR/c1ZiJmMUSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3nCkkBqYa11; Wed, 31 Aug 2022 07:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD77840863;
	Wed, 31 Aug 2022 07:05:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD77840863
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EA2E1BF405
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 07:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2196E40354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 07:05:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2196E40354
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnQ-fntuWI8e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 07:05:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 623D4400AF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 623D4400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 07:05:50 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-201-dFBVqmFwO4yY4rhIp3n_XA-1; Wed, 31 Aug 2022 03:05:45 -0400
X-MC-Unique: dFBVqmFwO4yY4rhIp3n_XA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D6063800C30;
 Wed, 31 Aug 2022 07:05:45 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.40.195.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E5091C15BB3;
 Wed, 31 Aug 2022 07:05:41 +0000 (UTC)
Date: Wed, 31 Aug 2022 09:05:40 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Message-ID: <20220831090540.53e324af@p1.luc.cera.cz>
In-Reply-To: <DM6PR11MB31134AD7D5D1CB5382A5052887799@DM6PR11MB3113.namprd11.prod.outlook.com>
References: <20220830081627.1205872-1-ivecera@redhat.com>
 <DM6PR11MB31134AD7D5D1CB5382A5052887799@DM6PR11MB3113.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1661929549;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mg8FDivTjK0Fno47rCTZSDZ/G71sgK45gh5D1Ko2fqs=;
 b=A+ukfoAf+0xKVelM1nOZ81FQaOW4bfdudAzE6j3jpK6gdxEQH3kFBn34KayU6+XSMuA/bL
 lYgjhUANw4EgI4ho4IJvtttSFLmTsvKxadBFwUIO2ZDC1OEuEUyUelRBeaFEal90kDsTme
 m9LLEaurH4iQ9c8D16qu7kWUZgCItdk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=A+ukfoAf
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Detach device during
 reset task
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
Cc: Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Vitaly Grinberg <vgrinber@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 30 Aug 2022 20:49:54 +0000
"Laba, SlawomirX" <slawomirx.laba@intel.com> wrote:

> Ivan, what do you think about this flow [1]? Shouldn't it also goto reset_finish label?
> 
> 	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
> 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
> 			reg_val);
> 		iavf_disable_vf(adapter);
> 		mutex_unlock(&adapter->client_lock);
> 		mutex_unlock(&adapter->crit_lock);
> 		return; /* Do not attempt to reinit. It's dead, Jim. */
> 	}
> 
> I am concerned that if the reset never finishes and iavf goes into disabled state, and then for example if driver reload operation is performed, bad things can happen.

I think we should not re-attach device back as the VF is disabled. Detached device causes that userspace (user) won't be able to configure associated interface
that is correct. Driver reload won't cause anything special in this situation because during module removal the interface is unregistered.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
