Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3254C21969F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 05:29:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F40F20526;
	Thu,  9 Jul 2020 03:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKXieA1s+69q; Thu,  9 Jul 2020 03:29:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A573F204F0;
	Thu,  9 Jul 2020 03:29:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 996781BF326
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 03:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9454288724
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 03:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5vIuZ4rmfdfD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 03:29:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6470988723
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 03:29:01 +0000 (UTC)
IronPort-SDR: i92CXXZCEWC9FU0csJGjNAohq9ER1GNPyhjVzr2nYp/iHElpO2VzYVsQwzQVINW2Lt2GyFBdqS
 FAPvR2GXThyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="128001825"
X-IronPort-AV: E=Sophos;i="5.75,330,1589266800"; d="scan'208";a="128001825"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 20:28:59 -0700
IronPort-SDR: 9I+QttWvsFDAuxyx0G2hSQyYKx3psIvbCSLRNMnCZ4XJ0YgleP0LRijL6BXYEKYnFCi4YiDwUP
 AKZ0aXwYj0wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,330,1589266800"; d="scan'208";a="483634694"
Received: from lcao2-mobl.ccr.corp.intel.com (HELO
 xni5-mobl5.ccr.corp.intel.com) ([10.255.30.177])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2020 20:28:58 -0700
Message-ID: <beb3f80787357f8bcd72817afea775816ae3fd0f.camel@intel.com>
From: Zhang Rui <rui.zhang@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Thu, 09 Jul 2020 11:28:57 +0800
In-Reply-To: <01DBC003-008F-470C-A228-029F34631305@canonical.com>
References: <20200521052753.GB12456@shao2-debian>
 <5A1631F8-259E-4897-BE52-0F5DB406E44F@canonical.com>
 <489156ef4d028d210ec03b7b02413e000fec2eaf.camel@intel.com>
 <01DBC003-008F-470C-A228-029F34631305@canonical.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: Len Brown <len.brown@intel.com>, Linux PM list <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, lkp@lists.01.org,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 kernel test robot <rong.a.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2020-07-02 at 21:12 +0800, Kai-Heng Feng wrote:
> > On Jul 2, 2020, at 20:20, Zhang Rui <rui.zhang@intel.com> wrote:
> > 
> > Hi, all,
> > 
> > This patch has been shipped in 5.8-rc1 with its upstream commit id
> > 0c80cdbf3320. And we observed big drop of suspend quality.
> > 
> > Previously, we have run into this "e1000e Hardware Error" issue,
> > occasionally. But now, on a NUC I have, system suspend-to-mem fails
> > within 10 suspend  cycles in most cases, but won't work again until
> > a reboot.
> > https://bugzilla.kernel.org/show_bug.cgi?id=205015
> > 
> > IMO, this is a regression, and we need to find a way to fix it.
> 
> Should be fixed by 
> https://lore.kernel.org/lkml/20200618065453.12140-1-aaron.ma@canonical.com/

With the patch on top of clean 5.8-rc3, suspend-resume always success,
although I can see "Failed to disable ULP" in dmesg for almost half of
the resumes.

thanks,
rui

> 
> Kai-Heng
> 
> > 
> > thanks,
> > rui
> > 
> > 
> > On Sat, 2020-05-23 at 20:20 +0800, Kai-Heng Feng wrote:
> > > [+Cc intel-wired-lan]
> > > 
> > > > On May 21, 2020, at 13:27, kernel test robot <
> > > > rong.a.chen@intel.com
> > > > > wrote:
> > > > 
> > > > Greeting,
> > > > 
> > > > FYI, we noticed the following commit (built with gcc-7):
> > > > 
> > > > commit: e86e383f2854234129c66e90f84ac2c74b2b1828 ("e1000e: Warn
> > > > if
> > > > disabling ULP failed")
> > > > 
> > 
> > 
https://git.kernel.org/cgit/linux/kernel/git/jkirsher/next-queue.git
> > > > dev-queue
> > > 
> > > kern  :warn  : [  240.884667] e1000e 0000:00:19.0 eth0: Failed to
> > > disable ULP
> > > kern  :info  : [  241.896122] asix 2-3:1.0 eth1: link up,
> > > 100Mbps,
> > > full-duplex, lpa 0xC1E1
> > > kern  :err   : [  242.269348] e1000e 0000:00:19.0 eth0: Hardware
> > > Error
> > > kern  :info  : [  242.772702] e1000e 0000:00:19.0:
> > > pci_pm_resume+0x0/0x80 returned 0 after 2985422 usecs
> > > 
> > > So the patch does catch issues previously ignored.
> > > 
> > > I wonder what's the next move, maybe increase the ULP timeout
> > > again?
> > > 
> > > Kai-Heng
> > > 
> > > > in testcase: suspend-stress
> > > > with following parameters:
> > > > 
> > > > 	mode: mem
> > > > 	iterations: 10
> > > > 
> > > > 
> > > > 
> > > > on test machine: 4 threads Broadwell with 8G memory
> > > > 
> > > > caused below changes (please refer to attached dmesg/kmsg for
> > > > entire log/backtrace):
> > > > 
> > > > 
> > > > 
> > > > 
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > > > 
> > > > SUSPEND RESUME TEST STARTED
> > > > Suspend to mem 1/10:
> > > > /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-
> > > > 8 
> > > > 
http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-1/10
> > > > -O /dev/null
> > > > Done
> > > > Sleep for 10 seconds
> > > > Suspend to mem 2/10:
> > > > /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-
> > > > 8 
> > > > 
http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-2/10
> > > > -O /dev/null
> > > > Done
> > > > Sleep for 10 seconds
> > > > Suspend to mem 3/10:
> > > > /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-
> > > > 8 
> > > > 
http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-3/10
> > > > -O /dev/null
> > > > Done
> > > > Sleep for 10 seconds
> > > > Suspend to mem 4/10:
> > > > /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-
> > > > 8 
> > > > 
http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-4/10
> > > > -O /dev/null
> > > > Done
> > > > Sleep for 10 seconds
> > > > Suspend to mem 5/10:
> > > > /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-
> > > > 8 
> > > > 
http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-5/10
> > > > -O /dev/null
> > > > Done
> > > > Sleep for 10 seconds
> > > > Suspend to mem 6/10:
> > > > /usr/bin/wget -q --timeout=1800 --tries=1 --local-encoding=UTF-
> > > > 8 
> > > > 
http://inn:80/~lkp/cgi-bin/lkp-jobfile-append-var?job_file=/lkp/jobs/scheduled/lkp-bdw-nuc1/suspend-stress-10-mem-debian-x86_64-20180403.cgz-e86e383f2854234129c66e90f84ac2c74b2b1828-20200517-66267-13fgkna-8.yaml&job_state=suspending-6/10
> > > > -O /dev/null
> > > > Failed
> > > > 
> > > > 
> > > > 
> > > > To reproduce:
> > > > 
> > > >       git clone https://github.com/intel/lkp-tests.git
> > > >       cd lkp-tests
> > > >       bin/lkp install job.yaml  # job file is attached in this
> > > > email
> > > >       bin/lkp run     job.yaml
> > > > 
> > > > 
> > > > 
> > > > Thanks,
> > > > Rong Chen
> > > > 
> > > > <config-5.7.0-rc4-01618-ge86e383f28542><job-
> > > > script.txt><kmsg.xz><suspend-stress.txt><job.yaml>
> > > 
> > > 
> 
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
