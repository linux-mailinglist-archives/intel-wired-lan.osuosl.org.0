Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC5D6E0553
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 05:35:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A385F40423;
	Thu, 13 Apr 2023 03:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A385F40423
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681356910;
	bh=lqsdabWOq82LPJ8yZjMol8TibA3yLrR7JYm7p1ltBys=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kMVgY5ERCFP+PVZDVwf4L+TCMUPy64g9hYYOjvb0RmM0/D98VqUP+zJXPQ1Qy1Xqg
	 JiYy7HbcBMD8Wm4/YaWRZk8cGUQFdz2bcmDsvKs7jMQbUAIYCojU6TLc2pR1lkfUyV
	 ct/sCVYBEZLLrzfRk5P0Wez5OqJdeGQrDsnsNJ5c6OlcZ0r0+kX6T4w3OsAES2eh1g
	 rEGZqFpleyqxyBtybpEhkNQ2Y6M+4w/CYa1YE7mKCqWslFdsNFFIsByGNCqW5lVtjs
	 hLAMjSbNjl9powV+whXUe7cKny+fkyLfvmMVYgfUHy6oCMW68g3pETg9El01e7a8eP
	 uNVvRY1Kt9OWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQnacbev1KX2; Thu, 13 Apr 2023 03:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A087C403AF;
	Thu, 13 Apr 2023 03:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A087C403AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E34AB1C3D54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 03:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B40F841DEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 03:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B40F841DEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9pXUsKuK1orC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 03:35:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B940041DDC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B940041DDC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 03:35:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 59ED9632F2;
 Thu, 13 Apr 2023 03:35:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DF10C433EF;
 Thu, 13 Apr 2023 03:35:01 +0000 (UTC)
Date: Wed, 12 Apr 2023 20:35:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20230412203500.36fb7c36@kernel.org>
In-Reply-To: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681356901;
 bh=rpTOShEt7WFV/HeS+ADKohhQwe6BCzAr5M17MqUv1dA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=W+CnNi477tF3vvqQ6Ih+bxmmazTbxa9lmbVi8Ay548kvHACzhv2CShqr/sQyGkqVg
 eEiS1rGwu1fEoCF7QHqVhBv28G7Q76Zzb5JRTfMYmnb+BUvOClOu59MQAo/icW5oqr
 y2SdR/a9fZjInpPrHgB+YH53i/7j2s9aYHiyvACBtDhXgRPl0HLRx46bspRRZkoLQC
 Fom2cvuRRCx+jwJjsvev6Wt/e8BQBoJ9QlOcHgBSzMoZ03evZrDkL2VNW06RMgsdzV
 5Nb7bxuJ6h0ajdkTpJgzmqKhyP15Wj8nsnytSrVd3oz4iBUgynJwnE1ZB20pBQEkG5
 Xaza7QZqi0GgQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W+CnNi47
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Cc: jiri@resnulli.us, corbet@lwn.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 12 Apr 2023 15:38:11 +0200 Arkadiusz Kubalewski wrote:
> If Clock Generation Unit and dplls are present on NIC board user shall
> know its details.
> Provide the devlink info callback with a new:
> - fixed type object `cgu.id` - hardware variant of onboard CGU
> - running type object `fw.cgu` - CGU firmware version
> - running type object `fw.cgu.build` - CGU configuration build version
> 
> These information shall be known for debugging purposes.
> 
> Test (on NIC board with CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu
>         cgu.id 8032
>         fw.cgu 6021
>         fw.cgu.build 0x1030001
> 
> Test (on NIC board without CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
> 0
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Is it flashed together with the rest of the FW components of the NIC?
Or the update method is different?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
