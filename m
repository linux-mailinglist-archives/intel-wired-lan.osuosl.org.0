Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 048F78D68C1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AF2640955;
	Fri, 31 May 2024 18:13:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WbvMoy9B32Ww; Fri, 31 May 2024 18:13:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2EA440574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179227;
	bh=mrfGBUc7iPDi30cg9FCMwUaCAvYQ7mk+t1P67+Vz0pU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DQ9QKDL5pIrZ7X1Yp1d8FuMHzKjTZuBzOL4HTBaZ0Lz4T3XJdLV5wCnqfNPiSrGDf
	 JfYT8YQl1k3R0MTbqu1jeR1SmeCmILrcqJVkmJCWt363NPXa8H++aiesI8ruaVcWwc
	 Yj3eBubH5A0jjY728MOqUOwvFpM3hAE7PnIBicIU0D3/4O8C8/dBKxJs6/QkTBJv4L
	 T3/wW/+9fw+A7Tqv78gwSkc53ckmbsGTMazF6mLED3VmZt5H/Vn55bbc2QHN0AHiua
	 QG2l7kNvD8DZpPnBWgNTn5ugZWHDg2SKvI5mh8qEX6LZ3ZGyamiM882fBC27ZyebO1
	 TneSwlKrg4NaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2EA440574;
	Fri, 31 May 2024 18:13:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91E651BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7CD1541766
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wbM2brStSeI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:13:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D15B0400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D15B0400D1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D15B0400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:13:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0B02E62A12;
 Fri, 31 May 2024 18:13:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAB73C2BD10;
 Fri, 31 May 2024 18:13:40 +0000 (UTC)
Date: Fri, 31 May 2024 19:13:38 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181338.GE491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179223;
 bh=NlNJoKQw02Z2Sdv6VpyQhxDm/mrs/9RVmVyqWMo0hnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PMDTKMoM8HisjJbNEA6I72XPijpmp1d/nZYSiMjtzLskvYCYaPk6oU9ZJM9Mdb+1b
 EXe0aTH6n8uR0vyjOsBvWXydV42iIatDjBWpW5wzgff1qZnuhr6adYoNeQHUVvBTip
 ZpesdrwS9YdOR3ZWVSalTkHjH7T1AE8DzKzD5iQa/8NqtPZonKPJw7i59EUncAd9Bj
 9Azt5DY1xSQ/hTfVamLqPAMRWFxwOzCixhRoLHhN0DbMan9qm50joagczOmoUafPvp
 Pgrknuz87eSS3ngMtgPSfwiDEM/UzN8ltstf/TGxTvOYK8IHuni2VJ5PryDT9GsjoB
 dKR+c/lLvO8VQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PMDTKMoM
Subject: Re: [Intel-wired-lan] [iwl-next v3 01/15] ice: add new VSI type for
 subfunctions
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:37:59AM +0200, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Add required plumbing for new VSI type dedicated to devlink subfunctions.
> Make sure that the vsi is properly configured and destroyed. Also allow
> loading XDP and AF_XDP sockets.
> 
> The first implementation of devlink subfunctions supports only one Tx/Rx
> queue pair per given subfunction.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

