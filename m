Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE618C5FF5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 May 2024 06:58:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A417981FA6;
	Wed, 15 May 2024 04:58:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JYTwyv2HY1dz; Wed, 15 May 2024 04:58:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67E2981FA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715749104;
	bh=UtAcPLNP6kgouwqAN92MLqB090/ibbS5kEQlJQkS2+k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J+tIkYgoeKXRYDC9j9HOeDed9uReNJcu254UuLhNmLKknl3MG8TxhJsuiBIxsbqq1
	 f3US6d26vHGoEkrykqrtR0w361vKmLkZSvnsxdHxU+x4YwYJ2Hw2+Sm7dcXQ3NB3Y9
	 7/shbUk5p5vCrY2aXYppILwF6yWhSXjP8o5sfSd3ZRT9cJY6rcE+Hid1DzIHFT56PJ
	 uB9TvVDrfQxZpCFDHbC6Xk8+dvMWhm1lBCe/fkZrQMYGOTZzVeHiS+viIgStjxXtbJ
	 kvQ9ckIbg9Fw/IsFN0SZbrW8D8EoxPzb/gVnmeQj8BIxyeEHWuA/Ot369NWkesFN3b
	 VmJLXn5BVa3KA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67E2981FA8;
	Wed, 15 May 2024 04:58:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5222F1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 04:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37FC34043A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 04:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IM2fqbBQaUSo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 May 2024 04:58:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 021834000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 021834000B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 021834000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 May 2024 04:58:18 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af258.dynamic.kabel-deutschland.de
 [95.90.242.88])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7C45461E5FE07;
 Wed, 15 May 2024 06:57:40 +0200 (CEST)
Message-ID: <23f86436-cd8a-45b0-9378-1ec3adecfc82@molgen.mpg.de>
Date: Wed, 15 May 2024 06:57:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oliver Sang <oliver.sang@intel.com>
References: <202405150942.f9b873b1-oliver.sang@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <202405150942.f9b873b1-oliver.sang@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [linus:master] [e1000e] 861e808602:
 suspend-stress.fail (e1000e: move force SMBUS from enable ulp function to
 avoid PHY loss issue)
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, yu.c.chen@intel.com,
 linux-kernel@vger.kernel.org, oliver.sang@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-lkp@lists.linux.dev,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, rui.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, Naama Meir <naamax.meir@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Oliver,


Thank you for the report.

Am 15.05.24 um 03:50 schrieb kernel test robot:

> kernel test robot noticed "suspend-stress.fail" on:
> 
> commit: 861e8086029e003305750b4126ecd6617465f5c7 ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue")
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git master
> 
> [test failed on linus/master a7c840ba5fa78d7761b9fedc33d69cef44986d79]
> [test failed on linux-next/master 6ba6c795dc73c22ce2c86006f17c4aa802db2a60]
> 
> in testcase: suspend-stress
> version:
> with following parameters:
> 
> 	mode: freeze
> 	iterations: 10
> 
> 
> 
> compiler: gcc-13
> test machine: 4 threads (Broadwell) with 8G memory
> 
> (please refer to attached dmesg/kmsg for entire log/backtrace)
> 
> 
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <oliver.sang@intel.com>
> | Closes: https://lore.kernel.org/oe-lkp/202405150942.f9b873b1-oliver.sang@intel.com
> 
> test started
> 
> <--- but cannot really run suspend-stress tests successfully
> 
> 
> as a contrast, for parent, we always noticed the jobs run smoothly
> 
> SUSPEND RESUME TEST STARTED
> Suspend to freeze 1/10:
> /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-freeze-debian-x86_64-20180403.cgz-6dbdd4de0362-20240406-63993-p7cw6d-0.yaml&job_state=suspending-1/10 -O /dev/null
> Done
> Sleep for 10 seconds
> 
> ...
> 
> Suspend to freeze 10/10:
> /usr/bin/wget -q --timeout=3600 --tries=1 --local-encoding=UTF-8 http://internal-lkp-server:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-freeze-debian-x86_64-20180403.cgz-6dbdd4de0362-20240406-63993-p7cw6d-0.yaml&job_state=suspending-10/10 -O /dev/null
> Done
> Sleep for 10 seconds
> SUSPEND RESUME TEST SUCCESS
> 
> The kernel config and materials to reproduce are available at:
> https://download.01.org/0day-ci/archive/20240515/202405150942.f9b873b1-oliver.sang@intel.com
> 
> 
> if you need more information, please let us know. Thanks!

Can you please share on what test system this fails, and provide the 
hardware information?

Also, do you have Linux logs until starting the tests?


Kind regards,

Paul


PS: In the Cc: header field, your address misses an l in domain part 
intel.com.
