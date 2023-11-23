Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 149427F5704
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Nov 2023 04:22:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EDBA81393;
	Thu, 23 Nov 2023 03:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EDBA81393
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700709735;
	bh=vGugQLI6AWUbXo1Bl1SDgURlkXk49HZGzIJ8Nhzj2PA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VMv6wvAk9M1qVZevLCgWzN0PwBSJrTW+qnP2pvN8WCcBpQrOJNMt1xUH9ar80i0sn
	 C+dD1bUGlbjdPsEVYGwBKbAWOfEs9Xs9hkQSwJBNr5rdS3NCdCfGfkPIkVM1/VYbx7
	 aBYzf5cXBTmzuCNWNACqdQ2RXZobklfioQyEv40/frasoWV0/ErkOK8Qrjt+w5lOgq
	 34/qc7boQXDVaOIA4TZpdJKIntZIJvhCs3q3Yy+uGs+uvcZCTHMaN9TAfVU6PGna9h
	 v/ThujDmMfMQ1KOkNry77LEKpd6EY1b5/cKg+rK4LFXP59JlC82vUQ+3kwuKkkAYv+
	 PUgcF7wxmAjzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZexANCM22eG3; Thu, 23 Nov 2023 03:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E75F813AD;
	Thu, 23 Nov 2023 03:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E75F813AD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B90D61BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 03:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 83C0240399
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 03:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83C0240399
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KPqJXc9M9AD1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Nov 2023 03:22:07 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E3D9402E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 03:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E3D9402E6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 74D99B80DBF;
 Thu, 23 Nov 2023 03:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF702C433C8;
 Thu, 23 Nov 2023 03:22:02 +0000 (UTC)
Date: Wed, 22 Nov 2023 19:22:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Zhang, Xuejun" <xuejun.zhang@intel.com>
Message-ID: <20231122192201.245a0797@kernel.org>
In-Reply-To: <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho> <20230822081255.7a36fa4d@kernel.org>
 <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700709723;
 bh=yAc2hE061dNOWccQc37rtV38ITS3Vn4u5CYPg8/n4Gk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OwA2SWorUNCEzk8EowGrclIWcuGhbpXO1hC2zUlxu6W/+XTqwWLCLMgU/OVEW1NPA
 Pptk52YDyySnXpvLwsvAWmvFASfnyefyblEaiZ8xNr0FcoStAnyENB64wJDoQZrAVX
 LJBgDsmHZsWEq/OXZJ83vvgE+Z2v9iZ/FMrNGMJNQtm3vGDsk51Zn9uMexKqCC+IvQ
 ycPX9uWMnBpjL8bX3cIxzNwBWoxHRoURKngX2XlRYO9O0VqKtHhGj1xetg9WSw2Kbp
 BlqE6a7r3roQi2TvOv2aY8KLijDYLIyJ5UfchwwbbUxBirXymgl5ZYHVhKhd1wCj3t
 qXGxbLP/o9mng==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OwA2SWor
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, "Chittim, Madhu" <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 22 Nov 2023 14:19:14 -0800 Zhang, Xuejun wrote:
> The proposed API would incur net/core and driver changes as follows
> a) existing drivers with ndo_set_tx_maxrate support upgraded to use new 
> ndo_set_tx_rate
> b) net sysfs (replacing ndo_set_maxrate with ndo_set_tx_rate with 
> minrate and burst set to 0, -1 means ignore)
> c) Keep the existing /sys/class/net/ethx/queues/tx_nn/tx_maxrate as it 
> is currently
> d) Add sysfs entry as /sys/class/net/ethx/queues/tx_nn/tx_minrate & 
> /sys/class/net/ethx/queues/tx_nn/burst

You described extending the sysfs API (which the ndo you mention 
is for) and nothing about converging the other existing APIs.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
