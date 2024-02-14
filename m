Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBF885435B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 08:23:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3610141737;
	Wed, 14 Feb 2024 07:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2Qtdxzn_QQs; Wed, 14 Feb 2024 07:23:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48B3141734
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707895388;
	bh=riog4IDpUEuUEGY/EuunMILvxtA5XzhRZDxYfdr8OwM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JyDFNmU1H2vXOWQ3bncRU4TNzuszae4jTV6bax6MvEYe37EtdpYH3BeN3MMfSiCVz
	 lqX6NqA5rtOul+I9ojL77qEEqjSUOdS2DwJ2Bm92gPY59MqguX2B6y9rG81CbU08ti
	 WpHcIHiVa/+MhSTquLHorIp/MMoJHofCwpj1ueS/XMugeLwEqprekae38UXtCv68Bz
	 G7CnMM6nXbyd0Lbj1kEZyNw5CaP8IfqIDk4D26Unpf61R/wrikisX4ffGzDPGY5404
	 ytB0Yw+f2j4tI3UqxEQqYvsfRdu8hX9Eo/wVOFvOfs0aGzELkOOXZmkaS9FEZmx59B
	 SmXeheyMm9+SA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48B3141734;
	Wed, 14 Feb 2024 07:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0D691BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 07:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86D9060EE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 07:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cx3kQX7oZVAi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 07:23:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0CADF60EC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CADF60EC0
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CADF60EC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 07:23:01 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aea4b.dynamic.kabel-deutschland.de
 [95.90.234.75])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1916E61E5FE05;
 Wed, 14 Feb 2024 08:22:21 +0100 (CET)
Message-ID: <926b5031-47d2-42d7-938d-01fc4ebc9dc0@molgen.mpg.de>
Date: Wed, 14 Feb 2024 08:22:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jon Maxwell <jmaxwell37@gmail.com>, jesse.brandeburg@intel.com
References: <20240213222344.195885-1-jmaxwell37@gmail.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240213222344.195885-1-jmaxwell37@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [net-next v3] intel: make module parameters
 readable in sys filesystem
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jon,


Thank you very much for your patch.

Am 13.02.24 um 11:23 PM schrieb Jon Maxwell:
> Linux users sometimes need an easy way to check current values of module
> parameters. For example the module may be manually reloaded with different
> parameters. Make these visible and readable in the /sys filesystem to allow
> that.
> 
> Signed-off-by: Jon Maxwell <jmaxwell37@gmail.com>
> ---
> V2: Remove the "debug" module parameter as per Andrew Lunns suggestion.

Please mention this in the commit message, why `debug` should not be 
exposed.


Kind regards,

Paul


> V3: Correctly format v2.
>   drivers/net/ethernet/intel/e100.c             | 4 ++--
>   drivers/net/ethernet/intel/igb/igb_main.c     | 2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>   3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index 01f0f12035caeb7ca1657387538fcebf5c608322..3fcb8daaa2437fa3fe7b98ba9f606dbbb1844e58 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -171,8 +171,8 @@ static int debug = 3;
>   static int eeprom_bad_csum_allow = 0;
>   static int use_io = 0;
>   module_param(debug, int, 0);
> -module_param(eeprom_bad_csum_allow, int, 0);
> -module_param(use_io, int, 0);
> +module_param(eeprom_bad_csum_allow, int, 0444);
> +module_param(use_io, int, 0444);
>   MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
>   MODULE_PARM_DESC(eeprom_bad_csum_allow, "Allow bad eeprom checksums");
>   MODULE_PARM_DESC(use_io, "Force use of i/o access mode");
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 4df8d4153aa5f5ce7ac9dd566180d552be9f5b4f..31d0a43a908c0a4eab4fe1147064a5f5677c9f0b 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -202,7 +202,7 @@ static struct notifier_block dca_notifier = {
>   #endif
>   #ifdef CONFIG_PCI_IOV
>   static unsigned int max_vfs;
> -module_param(max_vfs, uint, 0);
> +module_param(max_vfs, uint, 0444);
>   MODULE_PARM_DESC(max_vfs, "Maximum number of virtual functions to allocate per physical function");
>   #endif /* CONFIG_PCI_IOV */
>   
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index bd541527c8c74d6922e8683e2f4493d9b361f67b..9d26ff82a397d4939cf7adea78c217e4071aa166 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -147,13 +147,13 @@ static struct notifier_block dca_notifier = {
>   
>   #ifdef CONFIG_PCI_IOV
>   static unsigned int max_vfs;
> -module_param(max_vfs, uint, 0);
> +module_param(max_vfs, uint, 0444);
>   MODULE_PARM_DESC(max_vfs,
>   		 "Maximum number of virtual functions to allocate per physical function - default is zero and maximum value is 63. (Deprecated)");
>   #endif /* CONFIG_PCI_IOV */
>   
>   static bool allow_unsupported_sfp;
> -module_param(allow_unsupported_sfp, bool, 0);
> +module_param(allow_unsupported_sfp, bool, 0444);
>   MODULE_PARM_DESC(allow_unsupported_sfp,
>   		 "Allow unsupported and untested SFP+ modules on 82599-based adapters");
>   
