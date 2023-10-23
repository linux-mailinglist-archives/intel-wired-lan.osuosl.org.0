Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 343707D27F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 03:27:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5299360E0B;
	Mon, 23 Oct 2023 01:27:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5299360E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698024422;
	bh=sGELTJrqfEG8oEIkyn8/W36bo22wnAV7hDlhU7hswN0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=9MicBiVO+z1vXY3K4yOQJ9+GPO+4eQ0riMnw6HOZbRCpa/gLMnrgT6O4WClh0trhW
	 /l8hG8CRJ+F1eFlPHwbVm882zI2pKopvWPpc+tXXrxSsKph9gUmXN7TqjYDwDlniQA
	 bA3879Rcn2x8ZCj2U/ZvxGWfjLSA26GRIu+rtRdm6OkkZxaR+95dV+rFvkvoZHEyES
	 sK5lbFucGmbQcf90UfI2o4n4w9AfQ5MrGTlr8Wp6MSUk4lxVFelp/fABm02BeGfQft
	 asfghnX2WZUlT83cBhixmGJ0mpuynx5NFotb5yLGYOUyPgaFgpfV1nzh0LoN/UdRVU
	 gjj3P5Ddxa6WQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9iGtUFEk8hlO; Mon, 23 Oct 2023 01:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4660560DC2;
	Mon, 23 Oct 2023 01:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4660560DC2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB23C1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 01:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FB8D40603
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 01:26:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FB8D40603
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzmi5SF1ZI3K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 01:26:55 +0000 (UTC)
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp2.osuosl.org (Postfix) with SMTP id 26D02405FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 01:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26D02405FD
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 8D33D6047A8C6; 
 Mon, 23 Oct 2023 09:26:35 +0800 (CST)
Message-ID: <394deb86-89c8-9e77-eb92-8fca21997083@nfschina.com>
Date: Mon, 23 Oct 2023 09:26:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
In-Reply-To: <58d18354-dbd6-47d3-93a8-ba0446dcc8f6@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: add an error code check in
 i40e_vsi_setup
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/10/21 05:09, Jacob Keller wrote:

>
> On 10/19/2023 11:56 PM, Dan Carpenter wrote:
>> On Fri, Oct 20, 2023 at 10:43:09AM +0800, Su Hui wrote:
>>> check the value of 'ret' after calling 'i40e_vsi_config_rss'.
>>>
>>> Signed-off-by: Su Hui <suhui@nfschina.com>
>>> ---
>>> v2:
>>> - call i40e_vsi_clear_rings() to free rings(thank dan carpenter for
>>>    pointing out this).
>> Looks okay now.
>>
>> Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>
>>
>> regards,
>> dan carpenter
>>
>>
> For some reason this patch doesn't appear to have hit the
> intel-wired-lan list and is thus not being recorded in patchwork for IWL.
>
> Su Hui, would you mind please re-sending this so that it gets picked up
> by patchwork? Otherwise I'm afraid that it might get lost inbetween when
> Tony returns from vacation.

Sorry for the late reply, I have already resent it[1].

Su Hui

[1] https://lore.kernel.org/all/20231023012024.18757-1-suhui@nfschina.com/


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
