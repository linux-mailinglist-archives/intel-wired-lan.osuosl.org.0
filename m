Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 281195AC368
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Sep 2022 10:20:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6306F60C03;
	Sun,  4 Sep 2022 08:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6306F60C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662279615;
	bh=QGKZFZalmHBDB45Gx7cE8nba/zKpUVW9073faWGxm/E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kQVElsWU0Oqb7OTrLc6+PVpQ4LiV2HybFDGGk0CBPuKjPXSmCFMuRPNAUnAUrrSuJ
	 lFq2ErtEIua/XYhSaZyqoNtLQT8Iq1JY5SLonlvcWPXKFond5LAdEhvQGgriyZVD+l
	 RgF6q197zV4GLpZBEvQx24T7WiJ8nhuKYAdDPdcCAeD95A+sHqzQTlYnyrNNPVFuwh
	 dChL+Q2D1UE+AAmSAsdK1J3grrPbkxVXD5Icugis0YN8oKScElQ/80Nqkh8v7S9gks
	 DlMXBlhkzwk7tq4T9eOKAtIat2j2e54wbqoe+QDpK6LJMNiF2g4pW1pOjGsCwt4ziu
	 CGR8vINFRoLsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjiCGyGL4GqA; Sun,  4 Sep 2022 08:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46B6560BB2;
	Sun,  4 Sep 2022 08:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46B6560BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 340711BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 08:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D3E460BB2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 08:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D3E460BB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fCa-AxwTBiv4 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Sep 2022 08:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7447160B1D
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7447160B1D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Sep 2022 08:20:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="296225828"
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="296225828"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2022 01:19:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="643438167"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.13.50])
 ([10.13.13.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2022 01:19:54 -0700
Message-ID: <2a31d5cc-63db-9b4a-94ca-264ed5cd2adf@linux.intel.com>
Date: Sun, 4 Sep 2022 11:19:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Li Zhong <floridsleeves@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <20220830071549.2137413-1-floridsleeves@gmail.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220830071549.2137413-1-floridsleeves@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662279608; x=1693815608;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vUkKqMd+013HwWmzXgAGkD/lAPQSyq4o+Dw/LJBJna8=;
 b=VGOtql+HwvHXobTuwyhVS967CJSEIXF/Ow0QB9elXLUmMxTs9QofsKaB
 o6sO6vlJj2Vkx9KGEHdC84knx50tEUnJItEs3nsHZyoKmcrXtwQszfP1z
 tMkH+sIXsHQvIf7nI5UKXvEqCjXrGpXHPZqPW4FOF/4YyLib5LEDLq2aT
 IQQ8KsVvgYLgFCuusqXkU7dtW7ZGk0aC68S3pCZW+elTPnU1seTVrZoKC
 01wB2jp8J+QXqAY1wk5L1DGIc9tY0Ew9GRBMpS39gSTM9EmPgf88K5TM5
 Nmv+RdwUquFhX6zIlj3petyEVeCCf1RspeIRCu0K8ULV0SE7uFyuZ2pYE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VGOtql+H
Subject: Re: [Intel-wired-lan] [PATCH v3] drivers/net/ethernet/e1000e: check
 return value of e1e_rphy()
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
Cc: kuba@kernel.org, edumazet@google.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/30/2022 10:15, Li Zhong wrote:
> e1e_rphy() could return error value when reading PHY register, which
> needs to be checked.
> 
> Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
