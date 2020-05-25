Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A051E0672
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 May 2020 07:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 430C720402;
	Mon, 25 May 2020 05:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0IGQaxfnvfDS; Mon, 25 May 2020 05:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3AF7203FD;
	Mon, 25 May 2020 05:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDF1E1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 05:42:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B99048684A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 05:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLwmYrgBpJD5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2020 05:42:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 988CE86838
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 05:42:03 +0000 (UTC)
IronPort-SDR: ejAw1kTooBOkJmMjeK7OyxSXQ4SK/SjHGRzCQYt7KC5JbTJ1HaJd7p1QhhNYGWQDai1/1SHd1Y
 67uWMa/wOQow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2020 22:42:02 -0700
IronPort-SDR: wPFFV04TywTTYa5beoW4GIVLEixQ1HsRPAR0M3pTXwcfDlsL8LSNv36tgRfXsmk5bBA3HKdWcr
 qbmIfFPAPuWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="413405474"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.214.251.54])
 ([10.214.251.54])
 by orsmga004.jf.intel.com with ESMTP; 24 May 2020 22:41:59 -0700
To: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
References: <20200521052753.GB12456@shao2-debian>
 <5A1631F8-259E-4897-BE52-0F5DB406E44F@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <99f5e417-c369-26a9-3b61-5552d9ba8c35@intel.com>
Date: Mon, 25 May 2020 08:41:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <5A1631F8-259E-4897-BE52-0F5DB406E44F@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [e1000e] e86e383f28: suspend-stress.fail
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
Cc: kernel test robot <rong.a.chen@intel.com>, "Efrati,
 Nir" <nir.efrati@intel.com>, lkp@lists.01.org, Zhang Rui <rui.zhang@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>, mpearson@lenovo.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/23/2020 15:20, Kai-Heng Feng wrote:
> [+Cc intel-wired-lan]
> 
>> On May 21, 2020, at 13:27, kernel test robot <rong.a.chen@intel.com> wrote:
>>
>> Greeting,
>>
>> FYI, we noticed the following commit (built with gcc-7):
>>
>> commit: e86e383f2854234129c66e90f84ac2c74b2b1828 ("e1000e: Warn if disabling ULP failed")
>> https://git.kernel.org/cgit/linux/kernel/git/jkirsher/next-queue.git dev-queue
> 
> kern  :warn  : [  240.884667] e1000e 0000:00:19.0 eth0: Failed to disable ULP
> kern  :info  : [  241.896122] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
> kern  :err   : [  242.269348] e1000e 0000:00:19.0 eth0: Hardware Error
> kern  :info  : [  242.772702] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2985422 usecs
> 
> So the patch does catch issues previously ignored.
> 
> I wonder what's the next move, maybe increase the ULP timeout again?
> 
Kai-Heng, you can't simple increase ULP timeout. Why ME required more 
time? We need to find ME expert and understand why FWSM (firmware 
semaphore, bit 10 ULP_CFG_DN) indication take too much time. I wonder if 
this indication work as properly. Please, try to understand. All 
delay/timeout approach not acceptable.

Also, we communicated: : Intel vPro (vPro CPU + Corporate ME FW) system 
(i.e. I219LM system) is NOT POR to support Linux

> Kai-Heng
> 
>>
>> in testcase: suspend-stress
>> with following parameters:
>>
>> 	mode: mem
>> 	iterations: 10
>>
>>
>>
>> on test machine: 4 threads Broadwell with 8G memory
>>
>> caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
>>
>>
>>
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kernel test robot <rong.a.chen@intel.com>
>>
>> SUSPEND RESUME TEST STARTED
>> Suspend to mem 1/10:
>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-1/10 -O /dev/null
>> Done
>> Sleep for 10 seconds
>> Suspend to mem 2/10:
>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-2/10 -O /dev/null
>> Done
>> Sleep for 10 seconds
>> Suspend to mem 3/10:
>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-3/10 -O /dev/null
>> Done
>> Sleep for 10 seconds
>> Suspend to mem 4/10:
>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-4/10 -O /dev/null
>> Done
>> Sleep for 10 seconds
>> Suspend to mem 5/10:
>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-5/10 -O /dev/null
>> Done
>> Sleep for 10 seconds
>> Suspend to mem 6/10:
>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-6/10 -O /dev/null
>> Failed
>>
>>
>>
>> To reproduce:
>>
>>         git clone https://github.com/intel/lkp-tests.git
>>         cd lkp-tests
>>         bin/lkp install job.yaml  # job file is attached in this email
>>         bin/lkp run     job.yaml
>>
>>
>>
>> Thanks,
>> Rong Chen
>>
>> <config-5.7.0-rc4-01618-ge86e383f28542><job-script.txt><kmsg.xz><suspend-stress.txt><job.yaml>
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
