Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8503B57432
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 11:12:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8872C6F8C6;
	Mon, 15 Sep 2025 09:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hmOSC9wPBiVt; Mon, 15 Sep 2025 09:12:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FA616F8BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757927555;
	bh=2TSHgabSXFO8f7GadLhW/peOWx2syuyPmEjcxG16SyI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C6uqr2bXd12XqTS9VHCrOaaWRnAhTPFf05SYf5s7fMhyCQ0H5iQmt2pfSaRrThW/Y
	 z6OI2KxI4X5m24PPjdz0b00FpgWFNx5xfvRfEsDsY8/E3i0Vxftn76PVloxzoIzvp0
	 D7JneTYizwwTpy6Ga1mOeu3fNG/uDym147fTdeaYtqudTfq0UHNPdT7WxzzhH/kZKU
	 cb3VkowxoGJG7k3w60o2NHmydiNywP9juU+RSwNd47k+ZLyDAj+4P7YPLnrgAMxSFn
	 Bof3T+16rw8MHv3nTRS7BUzawueua/ydG0h641OO73hhVJeorc5E2bjPfZZEBkKxfn
	 TIa6WjRGPMJhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FA616F8BE;
	Mon, 15 Sep 2025 09:12:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B4BA22F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 09:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 487C742231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 09:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JZ9zHen3tJjj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 09:12:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C18DA413E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C18DA413E7
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C18DA413E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 09:12:30 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7be.dynamic.kabel-deutschland.de
 [95.90.247.190])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 039BA6028F366;
 Mon, 15 Sep 2025 11:12:13 +0200 (CEST)
Message-ID: <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
Date: Mon, 15 Sep 2025 11:12:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your patch.

Am 12.09.25 um 10:02 schrieb Aleksandr Loktionov:
> The variable 'err' in iavf_resume() is used to store the return value
> of different functions, which return an int. Currently, 'err' is
> declared as u32, which is semantically incorrect and misleading.
> 
> In the Linux kernel, u32 is typically reserved for fixed-width data
> used in hardware interfaces or protocol structures. Using it for a
> generic error code may confuse reviewers or developers into thinking
> the value is hardware-related or size-constrained.
> 
> Replace u32 with int to reflect the actual usage and improve code
> clarity and semantic correctness.

Why not use `unsigned int`?

> 
> No functional change.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 69054af..c2fbe44 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -5491,7 +5491,7 @@ static int iavf_resume(struct device *dev_d)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev_d);
>   	struct iavf_adapter *adapter;
> -	u32 err;
> +	int err;
>   
>   	adapter = iavf_pdev_to_adapter(pdev);
>   

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
