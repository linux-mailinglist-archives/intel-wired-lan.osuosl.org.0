Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CB31E1F1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 11:49:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C9C086E2A;
	Tue, 26 May 2020 09:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2VC7e8naUcqh; Tue, 26 May 2020 09:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08D0386DB3;
	Tue, 26 May 2020 09:49:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEA511BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 09:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A7B26864D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 09:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wC7xu0pWcqXl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 09:49:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 69E7F864CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 09:49:53 +0000 (UTC)
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jdWDW-0006eL-Ij
 for intel-wired-lan@lists.osuosl.org; Tue, 26 May 2020 09:49:50 +0000
Received: by mail-pg1-f197.google.com with SMTP id l25so16078692pgn.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 02:49:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=y5mxl5nGES/hAmcEjKfrXSlE/Y5dgo1Z4cdZsMsHskE=;
 b=L9VlVNSOoF2LT8O0O3sfQroU24eUgOp4Edo/m+LQKq0PzsFwzxYwgCduSX02Nq2Z1I
 QBoHtx9ciCtB9cQ0mgZnc4Tp0gXQyGObOXYR5HRoPmDvLnc9wX89afWB1E3otw2c2p6W
 e4cPgI14KD+Lf+dP9m30Ak8fZJ4Emd68UXbvRP38lcQJUZ0kGA/cWE1/y7tGK+CFkCsC
 QrXjM8iuwqiC043aF1N4kCZ7XdawWb/aTgkkJKViDOkXX2rFkCJKiacNLRWEoumhmiiE
 7h1RoCwmoORqD0+zYkJMepXd6BgHHKoMFeGbNqKVuTisKGdCHnPXJ8fpma9HC0Gh8iv+
 Frkw==
X-Gm-Message-State: AOAM530Rk7HoLkscMfOUWOFHTSLQ298XvMCKn68pEchsES6t32QXJ59F
 R/s3lTo23HPMNIr47CL5J2jhxfdV2oTyhsFl3z8aAxD+feh2ZcxaqNgG1yusBZMXD4WsdVXGBKT
 9ck6HVzGRUdWASZ3EDTroYMUv/nAfpiLNNgEwCFuyw3Z35X4=
X-Received: by 2002:a63:b606:: with SMTP id j6mr272303pgf.334.1590486588650;
 Tue, 26 May 2020 02:49:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+KzIB02fPOTy+s3/yvD/QNpZnSV0NUq8kD7asfk6Gr/iCqUKkNXF1CwCE5WeHb22UD1uZzA==
X-Received: by 2002:a63:b606:: with SMTP id j6mr272278pgf.334.1590486588265;
 Tue, 26 May 2020 02:49:48 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id b29sm14787464pff.176.2020.05.26.02.49.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 May 2020 02:49:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <99f5e417-c369-26a9-3b61-5552d9ba8c35@intel.com>
Date: Tue, 26 May 2020 17:49:44 +0800
Message-Id: <352005A1-B532-4B0C-80D9-AE27FABB69C4@canonical.com>
References: <20200521052753.GB12456@shao2-debian>
 <5A1631F8-259E-4897-BE52-0F5DB406E44F@canonical.com>
 <99f5e417-c369-26a9-3b61-5552d9ba8c35@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
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
 Nir" <nir.efrati@intel.com>, lkp@lists.01.org,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Zhang Rui <rui.zhang@intel.com>, "Avivi, Amir" <amir.avivi@intel.com>,
 Mark Pearson <mpearson@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On May 25, 2020, at 13:41, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> On 5/23/2020 15:20, Kai-Heng Feng wrote:
>> [+Cc intel-wired-lan]
>>> On May 21, 2020, at 13:27, kernel test robot <rong.a.chen@intel.com> wrote:
>>> 
>>> Greeting,
>>> 
>>> FYI, we noticed the following commit (built with gcc-7):
>>> 
>>> commit: e86e383f2854234129c66e90f84ac2c74b2b1828 ("e1000e: Warn if disabling ULP failed")
>>> https://git.kernel.org/cgit/linux/kernel/git/jkirsher/next-queue.git dev-queue
>> kern  :warn  : [  240.884667] e1000e 0000:00:19.0 eth0: Failed to disable ULP
>> kern  :info  : [  241.896122] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
>> kern  :err   : [  242.269348] e1000e 0000:00:19.0 eth0: Hardware Error
>> kern  :info  : [  242.772702] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2985422 usecs
>> So the patch does catch issues previously ignored.
>> I wonder what's the next move, maybe increase the ULP timeout again?
> Kai-Heng, you can't simple increase ULP timeout. Why ME required more time? We need to find ME expert and understand why FWSM (firmware semaphore, bit 10 ULP_CFG_DN) indication take too much time. I wonder if this indication work as properly. Please, try to understand. All delay/timeout approach not acceptable.

Sorry if I caused any confusion, just want to point out this bug dates back to Broadwell systems:
kern  :info  : [    0.000000] DMI:  /NUC5i3RYB, BIOS RYBDWi35.86A.0363.2017.0316.1028 03/16/2017

And NUC5i3RYB doesn't seem to have ME:
https://www.intel.com/content/dam/support/us/en/documents/mini-pcs/nuc-kits/NUC5i5RYB_NUC5i3RYB_TechProdSpec.pdf

Unfortunately I don't have any Broadwell system around, so I wonder if Intel Ethernet folks have access to the affected system...

Kai-Heng

> 
> Also, we communicated: : Intel vPro (vPro CPU + Corporate ME FW) system (i.e. I219LM system) is NOT POR to support Linux
> 
>> Kai-Heng
>>> 
>>> in testcase: suspend-stress
>>> with following parameters:
>>> 
>>> 	mode: mem
>>> 	iterations: 10
>>> 
>>> 
>>> 
>>> on test machine: 4 threads Broadwell with 8G memory
>>> 
>>> caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
>>> 
>>> 
>>> 
>>> 
>>> If you fix the issue, kindly add following tag
>>> Reported-by: kernel test robot <rong.a.chen@intel.com>
>>> 
>>> SUSPEND RESUME TEST STARTED
>>> Suspend to mem 1/10:
>>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-1/10 -O /dev/null
>>> Done
>>> Sleep for 10 seconds
>>> Suspend to mem 2/10:
>>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-2/10 -O /dev/null
>>> Done
>>> Sleep for 10 seconds
>>> Suspend to mem 3/10:
>>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-3/10 -O /dev/null
>>> Done
>>> Sleep for 10 seconds
>>> Suspend to mem 4/10:
>>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-4/10 -O /dev/null
>>> Done
>>> Sleep for 10 seconds
>>> Suspend to mem 5/10:
>>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-5/10 -O /dev/null
>>> Done
>>> Sleep for 10 seconds
>>> Suspend to mem 6/10:
>>> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-6/10 -O /dev/null
>>> Failed
>>> 
>>> 
>>> 
>>> To reproduce:
>>> 
>>>        git clone https://github.com/intel/lkp-tests.git
>>>        cd lkp-tests
>>>        bin/lkp install job.yaml  # job file is attached in this email
>>>        bin/lkp run     job.yaml
>>> 
>>> 
>>> 
>>> Thanks,
>>> Rong Chen
>>> 
>>> <config-5.7.0-rc4-01618-ge86e383f28542><job-script.txt><kmsg.xz><suspend-stress.txt><job.yaml>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
