Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA391DF72C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 May 2020 14:20:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B80386268;
	Sat, 23 May 2020 12:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKR1O_-ooAaL; Sat, 23 May 2020 12:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EDC585F44;
	Sat, 23 May 2020 12:20:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EBB41BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 12:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9AA5185DA5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 12:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7ve4VSNtd4y for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 May 2020 12:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8E3980ADE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 12:20:44 +0000 (UTC)
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jcT8s-0000jz-Pg
 for intel-wired-lan@lists.osuosl.org; Sat, 23 May 2020 12:20:43 +0000
Received: by mail-pf1-f197.google.com with SMTP id o192so10359392pfg.19
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 05:20:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=h9sQZi7TBS+lCdPd+GgbOzRw9+NeZv2ErJ95PvskA5c=;
 b=hrPjLe4qZXdWh7Nn5TsM4mXJ6SnNNODlKkgUNPSD5JY5xHEmNibSi43VvvOn/NmGi0
 rjkN+HOkKyLbBzwP+nNz85ta4n9mRwSKpwKsedRPKtDDmcGKpvTQGzJNpnXL+nItqOET
 uKjLyJnzIUqTgqK47n3uawQKsfVIf8fehejWvtPSslubLJBifohF+3+gzcWbm0up2IJQ
 u+alAPeYkh9QOVanyVjc/DUTXy1X38w2VVJJlYJixQGvaVNbV+FtOrfD0P+RMkLhTIK/
 u6D+TyofmiyOeNWeAc4kdDMTfubEh0c1AURMnRptORg4JPb2OXV8BsNG3GzV5Y8p5HHL
 gY2Q==
X-Gm-Message-State: AOAM532EhbVInbt9cJr1gG5I9hHkMp1GrvSMPhoPHbWAxZ93jFRA5TQj
 u6yuCqn/lT8UvEgMtVkvhtdT2FA5vhMfrxngG1OSyb03Ewxyiaz35tfavNRhwIczSrd7GfzHxch
 wPaEftQ6YL+M8DwPXbOwDZnC+VcbWmK+KY8K7ak7BG1TUZPg=
X-Received: by 2002:a63:34cd:: with SMTP id b196mr1685603pga.2.1590236440897; 
 Sat, 23 May 2020 05:20:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxfOoJd+bHAlBH9ZSw9j6rceA+2t6rBLb5mgESJ3A11K/NekRNXeUKf2f3mfyevbvY/3unGtg==
X-Received: by 2002:a63:34cd:: with SMTP id b196mr1685578pga.2.1590236440507; 
 Sat, 23 May 2020 05:20:40 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id s15sm8027266pgv.5.2020.05.23.05.20.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 23 May 2020 05:20:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200521052753.GB12456@shao2-debian>
Date: Sat, 23 May 2020 20:20:37 +0800
Message-Id: <5A1631F8-259E-4897-BE52-0F5DB406E44F@canonical.com>
References: <20200521052753.GB12456@shao2-debian>
To: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
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
Cc: lkp@lists.01.org, Zhang Rui <rui.zhang@intel.com>,
 kernel test robot <rong.a.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+Cc intel-wired-lan]

> On May 21, 2020, at 13:27, kernel test robot <rong.a.chen@intel.com> wrote:
> 
> Greeting,
> 
> FYI, we noticed the following commit (built with gcc-7):
> 
> commit: e86e383f2854234129c66e90f84ac2c74b2b1828 ("e1000e: Warn if disabling ULP failed")
> https://git.kernel.org/cgit/linux/kernel/git/jkirsher/next-queue.git dev-queue

kern  :warn  : [  240.884667] e1000e 0000:00:19.0 eth0: Failed to disable ULP
kern  :info  : [  241.896122] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
kern  :err   : [  242.269348] e1000e 0000:00:19.0 eth0: Hardware Error
kern  :info  : [  242.772702] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2985422 usecs

So the patch does catch issues previously ignored.

I wonder what's the next move, maybe increase the ULP timeout again?

Kai-Heng

> 
> in testcase: suspend-stress
> with following parameters:
> 
> 	mode: mem
> 	iterations: 10
> 
> 
> 
> on test machine: 4 threads Broadwell with 8G memory
> 
> caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> 
> 
> 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kernel test robot <rong.a.chen@intel.com>
> 
> SUSPEND RESUME TEST STARTED
> Suspend to mem 1/10:
> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-1/10 -O /dev/null
> Done
> Sleep for 10 seconds
> Suspend to mem 2/10:
> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-2/10 -O /dev/null
> Done
> Sleep for 10 seconds
> Suspend to mem 3/10:
> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-3/10 -O /dev/null
> Done
> Sleep for 10 seconds
> Suspend to mem 4/10:
> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-4/10 -O /dev/null
> Done
> Sleep for 10 seconds
> Suspend to mem 5/10:
> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-5/10 -O /dev/null
> Done
> Sleep for 10 seconds
> Suspend to mem 6/10:
> /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-8 http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-6/10 -O /dev/null
> Failed
> 
> 
> 
> To reproduce:
> 
>        git clone https://github.com/intel/lkp-tests.git
>        cd lkp-tests
>        bin/lkp install job.yaml  # job file is attached in this email
>        bin/lkp run     job.yaml
> 
> 
> 
> Thanks,
> Rong Chen
> 
> <config-5.7.0-rc4-01618-ge86e383f28542><job-script.txt><kmsg.xz><suspend-stress.txt><job.yaml>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
