Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F8B8239A2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 01:26:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D35A41938;
	Thu,  4 Jan 2024 00:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D35A41938
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704328004;
	bh=acLUKd9QheU/rsB2KiVcwkiY9yfMvPNJsbPTy75lHNw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DDEiPVcjdQ5GzZYMHQOPQNnysCzRTSOrNjaZsg8NbEoAVP6bB7bBUae/nSsca7Au5
	 swZdNGU6Be3tV76R5uCaZj4014iDQ4/TB3YMwDV9ksbcZpsLx0hy4Jq7QCY69jVXQm
	 /oG70HmLI5d/3LO4B0oVYudlp39Yazsr9VMsdChMJiweKc1AyIzglrjsE/Gu/Gcfo2
	 Zes9N4StmwWJEJGsW1U9PmcvEg/vXe3wjehAGzeFc8hyODBf0ETdQADNAcv8MgDV73
	 NGSJK5Tfnp5YjOPwd+384UHnb6ZTFf8DjIloBP4aCkBSw7ZO5ZCN9JKVMUFE7nUVyl
	 51POP9il+HdcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5tn-3qD4MvCj; Thu,  4 Jan 2024 00:26:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C208A41859;
	Thu,  4 Jan 2024 00:26:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C208A41859
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 909611BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 00:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67BA182983
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 00:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BA182983
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoqiP1brnVVO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 00:26:37 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DFC4882977
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 00:26:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFC4882977
Received: from [192.168.0.224] (ip5f5ae9b7.dynamic.kabel-deutschland.de
 [95.90.233.183])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3B49F61E5FE01;
 Thu,  4 Jan 2024 01:24:37 +0100 (CET)
Message-ID: <d8dcef7e-3659-4af4-b391-169081343fba@molgen.mpg.de>
Date: Thu, 4 Jan 2024 01:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: lakshmi.sowjanya.d@intel.com
References: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
 <20240103115602.19044-12-lakshmi.sowjanya.d@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240103115602.19044-12-lakshmi.sowjanya.d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] [RFC PATCH v3 11/11] ABI: pps: Add ABI
 documentation for Intel TIO
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, corbet@lwn.net,
 x86@kernel.org, jesse.brandeburg@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-sound@vger.kernel.org,
 tglx@linutronix.de, andriy.shevchenko@linux.intel.com, giometti@enneenne.com,
 netdev@vger.kernel.org, pandith.n@intel.com, eddie.dong@intel.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, jstultz@google.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Lakshmi,


Thank you for your patch.

Am 03.01.24 um 12:56 schrieb lakshmi.sowjanya.d@intel.com:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> Document sysfs interface for Intel Timed I/O PPS driver

I’d add a dot/period at the end.

> Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> ---
>   Documentation/ABI/testing/sysfs-platform-pps-tio | 7 +++++++
>   1 file changed, 7 insertions(+)
>   create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio
> 
> diff --git a/Documentation/ABI/testing/sysfs-platform-pps-tio b/Documentation/ABI/testing/sysfs-platform-pps-tio
> new file mode 100644
> index 000000000000..24a2eb591a05
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-platform-pps-tio
> @@ -0,0 +1,7 @@
> +What:		/sys/devices/platform/INTCxxxx/enable
> +Date:		March 2024
> +KernelVersion	6.9
> +Contact:	Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> +Description:
> +		(RW) Enable or disable PPS TIO generator output, read to
> +		see the status of hardware(Enabled/Disabled).

Please add a space before the (.

Wouldn’t it be more intuitive, if it returned true/false?


Kind regards,

Paul
