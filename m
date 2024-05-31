Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A218D68D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:17:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B8E442418;
	Fri, 31 May 2024 18:17:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mN2KiICvvShy; Fri, 31 May 2024 18:17:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9325942426
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179425;
	bh=qhL7AQfW8/R6Pjo+zvn2WvMC6Yv6WlBT2kNknKQtq8I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dps3/YDTKDh+U9Mv8MQDrxuui6R5PGp7DR1E8+YANrQKjsFHdi+0vM7IuP9TH9ij7
	 cAXkhXseJLWwRbhTDvKohKDsMRz55E2bieGt776Fimx/GShtswJXhYECpbACVpibbN
	 c+a4ulXJsDhvnWMa2qmwkS8hnb4bHZCAj/VepjN9QA1dfVcoBrKNJG8xGx2qH1ubAJ
	 9UZsRHmTImw9PeS0i2Khj4QqGTJY7D4FKNceHDhQBC81q9ulIpo++IU0ljNoYtodE/
	 kPn2CjZuhcNfAv3KNUHdYTzXkbaGBmN3QQ+romCpT8oW5x6R5spMaAhX/eBgSBm0FY
	 7+YyY03Q2Wu6Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9325942426;
	Fri, 31 May 2024 18:17:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C4271BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 385A4606CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eE5Yq7MRzN3j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:17:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7DC26606AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DC26606AA
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DC26606AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:17:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2CE1DCE1C4A;
 Fri, 31 May 2024 18:17:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A62EC116B1;
 Fri, 31 May 2024 18:16:56 +0000 (UTC)
Date: Fri, 31 May 2024 19:16:54 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181654.GK491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-9-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-9-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179419;
 bh=KOgNjrMn9knsj/gt9uAmGZH0ZGkZNuqnBZRpvXpDHS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HY9z2YiiZb7/DB5vqPY/rjeGaqIEGJhqtwVHlg7JASckBeFdSd+KupN2geekBaTQ7
 lothdNh/KVGLX7/xoBWaK4aQ8xisKSGdjuHUi+kHQZWziDCC3T7AdhAYQniAJMncas
 cZN1KaMCiWMVXnY+RqUpUQfj0UCNYmMvAy9wgeY6Z9jWwL1GfHovInqarWhw4BTeK6
 38VMlFVQTxetRUYXlHoDH3ybmhjFgO/hQAE2YVtb2DpRd8wxvKZ1Szow5SYNbWzdsH
 LuydcFkcnAX+rq7ReiVkM/CaOXhq3qCZeYqSX0jBrgwHR61mzz9FWhq5FdaGXN01GH
 BCQL97uvR5fhg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HY9z2Yii
Subject: Re: [Intel-wired-lan] [iwl-next v3 08/15] ice: make representor
 code generic
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

On Tue, May 28, 2024 at 06:38:06AM +0200, Michal Swiatkowski wrote:
> Keep the same flow of port representor creation, but instead of general
> attach function create helpers for specific representor type.
> 
> Store function pointer for add and remove representor.
> 
> Type of port representor can be also known based on VSI type, but it
> is more clean to have it directly saved in port representor structure.
> 
> Add devlink lock for whole port representor creation and destruction.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

