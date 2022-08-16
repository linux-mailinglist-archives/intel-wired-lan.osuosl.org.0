Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE531595388
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 09:15:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B95740607;
	Tue, 16 Aug 2022 07:15:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B95740607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660634103;
	bh=80O2omOk3spMF3kiYuTXjoEqakeE3RkYiO1W9iX2sTU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3+VWrx/ok4SPj7p4bXj+vfbtFIw5x/Ge/v//iYTbhxI9J0g137QR025buDjGWzFo+
	 72uK94G8KqAqg03EkHbRkePRpIkcvMB0e30W6QJXbUrN0p8dof8LQBad/sSdB/X/AK
	 fqofebw25N1JcIytyDUqn0ES5zosqYdIhYdNqab4gG4n27WKX3zoBfGh0JznL4a7ry
	 vkEaHbqLRJE+DAVhB0JZaywLityk0T7krJHf+Y5qCF3pbSog0RMNUvRAo0ayjCyNbd
	 mEOwtgM59jKH0ehxCL9egphdARzTb2xcwED0Tm2gjuU6umKjE/ctUdLJ+pCIHrzKWS
	 F8yY7MQy5MzeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zq9Er4vVm7Ds; Tue, 16 Aug 2022 07:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B78B40278;
	Tue, 16 Aug 2022 07:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B78B40278
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDF011BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 07:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4DE2813AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 07:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4DE2813AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zvAHKd1P9zB7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 07:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F3C781397
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F3C781397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 07:14:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279107510"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279107510"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:14:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="675110283"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.13.121])
 ([10.13.13.121])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:14:44 -0700
Message-ID: <93210e6c-a583-aff1-753b-88286ab09434@linux.intel.com>
Date: Tue, 16 Aug 2022 10:14:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org
References: <d8e3744f060ee11d5069bfd0f581f02d0ecb5e08.1657093744.git.lorenzo@kernel.org>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <d8e3744f060ee11d5069bfd0f581f02d0ecb5e08.1657093744.git.lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660634096; x=1692170096;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cJaW55uoJxwe0yE6jeTZRRbnIXNeIk4evQxubrO4EYo=;
 b=OpDRwtSTqlBC0NHSt0ULvtMtjL/G5xUXB9kEUyVsNnzmmCjdXQjcrk9J
 XfHltCtllyv03y7+NO1Uyz6oeIAGeAAiGDjBpqjn+gP8Zb9Vav8T/ZoVE
 iUy+s8+BU7eZkv0VPrvSEtysD55nfRPMmuquvb6rXBTyDirnJjYsZD35G
 ialFdTW+P8QVO1T/bJ96OGjRuPZAsilOfvd++HDxbutUjfKwuiZDiybNT
 LN4yxaLJZaILpfPs0xKOa8ACNMpyuh/5LIS2OPfrviU+PQWgT0msFRQDy
 SvibyGCAVgjYuK5APwkKXWPNtunFEuKNqATY8OZi/No76hCviEsgj768S
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OpDRwtST
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: add xdp frags support
 to ndo_xdp_xmit
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
Cc: jesse.brandeburg@intel.com, jbrouer@redhat.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/6/2022 10:54, Lorenzo Bianconi wrote:
> Add the capability to map non-linear xdp frames in XDP_TX and
> ndo_xdp_xmit callback.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
> Please note this patch is only compiled tested since I do not have
> access to a igc NIC
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 128 ++++++++++++++--------
>   1 file changed, 83 insertions(+), 45 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
