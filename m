Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6E0966397
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 16:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5EE4844E6;
	Fri, 30 Aug 2024 14:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uZdTY2uBmV16; Fri, 30 Aug 2024 14:03:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9248A844E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725026604;
	bh=QrhCT7icu6NtnGgnTVANA9HRX8TTQ+yDYH4sT/SdKxU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kg8nO38Rp8dn6gSl6HQxnTN+M5pqtR5XZ1/HiPIRHYUkC2fMz+5tHNv1JI71JKbvg
	 bG5CE04PrepP8eFOYdu/SVHHc9782TcNcx6BWu8x4G5rX85mdYO5MefhMr0B7GzokQ
	 UmE19FNDlcO+7u3NpIZSUlHsKAtk62fF4a4qhZqkSonXtVec1Wi0/Wlx1F2GcRpCMi
	 WCcEPE6eK9Dq5muQh/wiel9mD8SRWINChyun+MoDP+x3lnjtbPx7sbIFc8RMMba2eM
	 d2QvklGboriBXzCqnhN/O39SqTX5yjPSLZGNGhkuBCB+Mu3oo9lPl2MWC9aRwtDlUe
	 FqtRmJQ3urQKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9248A844E4;
	Fri, 30 Aug 2024 14:03:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A42D01BF20F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 20:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FF3C61193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 20:22:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ynptA2x5w3YR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 20:22:50 +0000 (UTC)
X-Greylist: delayed 3339 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 29 Aug 2024 20:22:49 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B56E561192
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B56E561192
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.133;
 helo=mx23lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
Received: from mx23lb.world4you.com (mx23lb.world4you.com [81.19.149.133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B56E561192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 20:22:49 +0000 (UTC)
Received: from [88.117.52.244] (helo=[10.0.0.160])
 by mx23lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96.2)
 (envelope-from <gerhard@engleder-embedded.com>) id 1sjknM-0003tY-0W;
 Thu, 29 Aug 2024 21:27:00 +0200
Message-ID: <23021c75-3dcb-404c-bf79-cef583f4600a@engleder-embedded.com>
Date: Thu, 29 Aug 2024 21:26:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Sasha Neftin <sasha.neftin@intel.com>
References: <64a982d3-a2f5-4ef7-ad75-61f6bb1fae24@stanley.mountain>
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <64a982d3-a2f5-4ef7-ad75-61f6bb1fae24@stanley.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AV-Do-Run: Yes
X-Mailman-Approved-At: Fri, 30 Aug 2024 14:03:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QrhCT7icu6NtnGgnTVANA9HRX8TTQ+yDYH4sT/SdKxU=; b=iyxOwQftMHbfTt+tYbSYAAPFku
 2tb2UF+TYVS8rBE271UdtFJqGwpG7izlnirE4eAcAO/mMt1XlbJB8Cv/WyOQudLdYSRh4YnacYQu4
 +yLncnJJNQqUTGubW1X5tS7gYoDTKbCBFk0ogTLH27FnCJ01toySVYoLd9Ry+nYENcwU=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=iyxOwQft
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Unlock on error in
 igc_io_resume()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 29.08.24 21:22, Dan Carpenter wrote:
> Call rtnl_unlock() on this error path, before returning.
> 
> Fixes: bc23aa949aeb ("igc: Add pcie error handler support")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index dfd6c00b4205..0a095cdea4fb 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7413,6 +7413,7 @@ static void igc_io_resume(struct pci_dev *pdev)
>   	rtnl_lock();
>   	if (netif_running(netdev)) {
>   		if (igc_open(netdev)) {
> +			rtnl_unlock();
>   			netdev_err(netdev, "igc_open failed after reset\n");
>   			return;
>   		}

Reviewed-by: Gerhard Engleder <gerhard@engleder-embedded.com>
