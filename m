Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7129D1A6114
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2020 01:12:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3457785EA8;
	Sun, 12 Apr 2020 23:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayVcaYoIddMC; Sun, 12 Apr 2020 23:12:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1FB586044;
	Sun, 12 Apr 2020 23:12:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 059D41BF316
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 19:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F292A8574F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 19:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDNmBy1wUFD9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Apr 2020 19:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5788B85683
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 19:18:29 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id 131so5031258lfh.11
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 12:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=VkyKrLNu8ffJklwz2DWuUoxP4CUcBoFlfVslbsBnJX0=;
 b=qsuGX73epyXNjON9/w88k16v8K+/shVFv10T8frCS4jBcI0JnJpTsbM7s2QJpJAkNO
 YSKOnSec+tuMDA5Hw2GA7MEsXrLjZIk0k6lXrbjOcgz6W19bNX9QjM9JbLz2FhALQYGn
 cPgfjCw84JO7Ar3V+7HUhI7s95pB74FQtCge9/lHPkHMhs71xlYzvQt7RqQn/3V6LN4z
 W1nfMqzEghfVX9diJZ9e/48LHfSaIjda64UuLW01LkZnxx7PXqM98dk7TYZFfRjUsmyu
 Qmsmotln0FD6/sMsz3H661V29Z1FGa5DGQLF3uGeA4Sv0DzXxC04/6SNzA55doxw65Yw
 4K8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=VkyKrLNu8ffJklwz2DWuUoxP4CUcBoFlfVslbsBnJX0=;
 b=jHSjjTSKhGd3TRmgEYfQK2IA+MDpiqAjSG+p/Jyw04TKhScDDYz/iKN10rQJ/Mzg5u
 oo0+NJOGwy+Cd4HrC+7AtLpDTbgNx1wDJU0eoXHu7GWqc9kqVi0pIhbJMo1rh+QhAVY1
 1OUw97KM4y1Qirq28/gBHMERIObx247aaQtT4R9RY9BEMYaEJbilmIJcfdOjrwE+q/7Y
 Jf7YfTC58K4jXE8qUqOXjlcTDoXCuBec4ms5Pm7Si67zyPC78fW3tbpOnvYzz7MMwaFB
 v4QwdAj/KFh7UUj4ZzXWIqT+TXrPAPV62yXxqyxyaRE3eLzy3H+6LFy/RA5fxrydUH2O
 Zb3w==
X-Gm-Message-State: AGi0PuZATtxuaVU8998KKb5JB6MJnow390b95ZpjycDAB1v0xf9CHLIl
 AVlW/ASSwDYog1qAb176ggg=
X-Google-Smtp-Source: APiQypJ8NnSBxmjCaan8XzDzEiA37QUDVrXEHT5hVr1cwwq6xm9DAZNH2ChfKSnXsUERrdl15qEUjQ==
X-Received: by 2002:ac2:4d10:: with SMTP id r16mr8409917lfi.180.1586719107321; 
 Sun, 12 Apr 2020 12:18:27 -0700 (PDT)
Received: from laptop ([178.170.168.10])
 by smtp.gmail.com with ESMTPSA id c2sm6641803lfb.43.2020.04.12.12.18.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2020 12:18:26 -0700 (PDT)
Date: Sun, 12 Apr 2020 22:18:24 +0300
From: Maxim Zhukov <mussitantesmortem@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <20200412191824.GA109724@laptop>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Sun, 12 Apr 2020 23:12:24 +0000
Subject: [Intel-wired-lan] BUG: e1000: infinitely loop at
 e1000_set_link_ksettings
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Qemu X86 (kernel 5.4.31):
The system-maintenance daemon hangout on D-state at startup on
ioctl(ETHTOOL_SSET) for setup advertising, duplex, etc...

kgdb stacktrace:

----

#0  0x00000000 in ?? ()
#1  0x00000046 in ?? ()
#2  0xdf59b780 in ?? ()
#3  0xc19e0870 in schedule () at kernel/sched/core.c:4150
#4  0xc19e2f3e in schedule_timeout (timeout=<optimized out>) at kernel/time/timer.c:1895
#5  0xc19e3041 in schedule_timeout_uninterruptible (timeout=<optimized out>) at kernel/time/timer.c:1929
#6  0xc10b3dd1 in msleep (msecs=<optimized out>) at kernel/time/timer.c:2048
#7  0xc160345d in e1000_set_link_ksettings (netdev=0xdec0b000, cmd=0xde47fe00) at drivers/net/ethernet/intel/e1000/e1000_ethtool.c:190
#8  0xc177b377 in ethtool_set_settings (dev=0xdec0b000, useraddr=0xbfc33620) at net/core/ethtool.c:757
#9  0xc177fb1a in dev_ethtool (net=0xc1e84480 <init_net>, ifr=<optimized out>) at net/core/ethtool.c:2637
#10 0xc179e313 in dev_ioctl (net=0xc1e84480 <init_net>, cmd=<optimized out>, ifr=0xde47feb4, need_copyout=0xde47feac) at net/core/dev_ioctl.c:424
#11 0xc1755861 in sock_do_ioctl (net=0xc1e84480 <init_net>, sock=<optimized out>, cmd=35142, arg=3217241600) at net/socket.c:1061
#12 0xc1755b61 in sock_ioctl (file=<optimized out>, cmd=35142, arg=<optimized out>) at net/socket.c:1189
#13 0xc11986fe in vfs_ioctl (filp=<optimized out>, cmd=<optimized out>, arg=<optimized out>) at fs/ioctl.c:47
#14 0xc11994da in do_vfs_ioctl (filp=<optimized out>, fd=24, cmd=<optimized out>, arg=3217241600) at fs/ioctl.c:699
#15 0xc119955e in ksys_ioctl (fd=<optimized out>, cmd=<optimized out>, arg=<optimized out>) at fs/ioctl.c:714
#16 0xc1199586 in __do_sys_ioctl (arg=<optimized out>, cmd=<optimized out>, fd=<optimized out>) at fs/ioctl.c:721
#17 __se_sys_ioctl (fd=24, cmd=35142, arg=-1077725696) at fs/ioctl.c:719
#18 0xc10020d6 in do_syscall_32_irqs_on (regs=<optimized out>) at arch/x86/entry/common.c:341
#19 do_fast_syscall_32 (regs=0xde47ffb4) at arch/x86/entry/common.c:404


frame 7:

189		while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
190			msleep(1);
191


Also stalled workers backtrace:

#3  0xc19e0870 in schedule () at kernel/sched/core.c:4150
#4  0xc19e2f3e in schedule_timeout (timeout=<optimized out>) at kernel/time/timer.c:1895
#5  0xc19e3041 in schedule_timeout_uninterruptible (timeout=<optimized out>) at kernel/time/timer.c:1929
#6  0xc10b3dd1 in msleep (msecs=<optimized out>) at kernel/time/timer.c:2048
#7  0xc1771fb4 in napi_disable (n=0xdec0b7d8) at net/core/dev.c:6240
#8  0xc15f0e87 in e1000_down (adapter=0xdec0b540) at drivers/net/ethernet/intel/e1000/e1000_main.c:522
#9  0xc15f0f35 in e1000_reinit_locked (adapter=0xdec0b540) at drivers/net/ethernet/intel/e1000/e1000_main.c:545
#10 0xc15f6ecd in e1000_reset_task (work=0xdec0bca0) at drivers/net/ethernet/intel/e1000/e1000_main.c:3506
#11 0xc106c882 in process_one_work (worker=0xdef4d840, work=0xdec0bca0) at kernel/workqueue.c:2272
#12 0xc106ccc6 in worker_thread (__worker=0xdef4d840) at kernel/workqueue.c:2418
#13 0xc1070657 in kthread (_create=0xdf508800) at kernel/kthread.c:255
#14 0xc19e4078 in ret_from_fork () at arch/x86/entry/entry_32.S:813


-----

If you need any additional information, I am entirely at your disposal.
Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
