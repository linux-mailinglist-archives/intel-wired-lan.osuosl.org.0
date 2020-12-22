Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8002E0DCD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 18:22:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFDB227233;
	Tue, 22 Dec 2020 17:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r1daoIjXQWk4; Tue, 22 Dec 2020 17:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 590D823265;
	Tue, 22 Dec 2020 17:22:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 478FF1BF873
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:22:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 38876204C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kEXUkdEEwnd6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 17:22:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by silver.osuosl.org (Postfix) with ESMTPS id B0E6B2042C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 17:22:24 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id e2so8784804pgi.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 09:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=c5LEavqIHcsGZNet7OtNJDKg+adi8Yhy4rgjrGS3+HY=;
 b=DB9ED2+8OMnwUUzccX30PHXzOQASZ4odqRfIkP+26b1qoi1JGFFsAFxqlCS2PYy4ZB
 19abBdglgQIXLKL61VE3Qi1ehEypx8VVxRTkmcUu1EUU/pMWB1CtY3DEWa9SJaWD1iyD
 9zIqT9X4PiGjnoPBMOvNFTFeavp28KSnyVF5IU1fdWhk4q3AH9mo4UP5BZex/grZyWeq
 9E3jbEoE7W/84bHY2HR1+UTIJXqed644N1vOeVYGI6/7QfewPdlF9egCG3eUV0HEJnR5
 VAEp4TaBZFWRFNupjeRyDwoH4cHuc/D1KsT0csg+kYbbQ3+AZSECjSATbE+a8F4GM3wk
 itFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=c5LEavqIHcsGZNet7OtNJDKg+adi8Yhy4rgjrGS3+HY=;
 b=VAYRnJYCHRia90Bi1Li7KUacEBIZO9+4WiKgNGMUubRmG3F+Xj3p6HpsYfIHbhTTV0
 eFVAfH+8jwebJ4y8pN0gleOal8xIlAkrdKuqfHo7YEZoouTe+ud2J763g1gWaU8Lzmv9
 IZ96/pZeszC2NHrQWpete0smelhi0eTsl+U4bNwQSZK5PxXg9sF1f/SLQjxCDxL2Sdhp
 RmdGtOYLqM0smsA85RJKLRSEixvTq/LYWsXslYv5GgD+OfVAUm3lIcI1YffpyZgsrOha
 eCdWiBf5QNf6uezs3PK/74oENWpaH0ZbkjtqXF/K74EsYjbxwotPF9Sn0rhx7d/Cb7Co
 Dz6w==
X-Gm-Message-State: AOAM531yi/1oGT5UXgWodR+l9kaEMtQMWAbspDp7g70t6xmToH0mV3uH
 sWa8Tsre1lab4/EL/Pt167sKioPtYs5bAO8b
X-Google-Smtp-Source: ABdhPJz3DZZV3pwiYy3mpqxo8oP/y4ZaPz1eP5EgYReImYZQVo/hj9V+4+wmvFxmBxzQwp/RnF7UGA==
X-Received: by 2002:a63:d707:: with SMTP id d7mr2365589pgg.275.1608657273668; 
 Tue, 22 Dec 2020 09:14:33 -0800 (PST)
Received: from hermes.local (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id o9sm20783519pjw.9.2020.12.22.09.14.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Dec 2020 09:14:33 -0800 (PST)
Date: Tue, 22 Dec 2020 09:12:55 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
Message-ID: <20201222091255.55fe72c3@hermes.local>
MIME-Version: 1.0
Subject: [Intel-wired-lan] Fw: [Bug 210855] New: Increased latency & jitter
 with e1000e on Linux 5.8
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Begin forwarded message:

Date: Tue, 22 Dec 2020 16:59:27 +0000
From: bugzilla-daemon@bugzilla.kernel.org
To: stephen@networkplumber.org
Subject: [Bug 210855] New: Increased latency & jitter with e1000e on Linux 5.8


https://bugzilla.kernel.org/show_bug.cgi?id=210855

            Bug ID: 210855
           Summary: Increased latency & jitter with e1000e on Linux 5.8
           Product: Networking
           Version: 2.5
    Kernel Version: 5.8
          Hardware: Intel
                OS: Linux
              Tree: Mainline
            Status: NEW
          Severity: normal
          Priority: P1
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: tm@del.bg
        Regression: No

I have a Linux router with the following specs:

Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz

01:00.0  Intel Corporation 82571EB Gigabit Ethernet Controller (rev 06)
01:00.1  Intel Corporation 82571EB Gigabit Ethernet Controller (rev 06)
02:00.0  Intel Corporation 82571EB Gigabit Ethernet Controller (rev 06)
02:00.1  Intel Corporation 82571EB Gigabit Ethernet Controller (rev 06)
03:00.0  Intel Corporation Ethernet Controller 10G X550T (rev 01)
03:00.1  Intel Corporation Ethernet Controller 10G X550T (rev 01)
04:00.0  Intel Corporation Ethernet Controller 10-Gigabit X540-AT2 (rev 01)
04:00.1  Intel Corporation Ethernet Controller 10-Gigabit X540-AT2 (rev 01)

Up to Linux 5.7 kernel everything was ok. After upgrading to 5.8 I've noticed
that latency and jitter to one of the e1000e NICs (82571EB) increased.

Further tests revealed the following:

# 4.19  rtt min/avg/max/mdev = 0.183/0.275/0.382/0.032 ms
# 5.0   rtt min/avg/max/mdev = 0.180/0.249/0.310/0.034 ms
# 5.4   rtt min/avg/max/mdev = 0.146/0.226/0.306/0.046 ms
# 5.6   rtt min/avg/max/mdev = 0.128/0.172/0.210/0.022 ms
# 5.7   rtt min/avg/max/mdev = 0.147/0.181/0.233/0.024 ms

# 5.8   rtt min/avg/max/mdev = 0.152/2.182/3.944/1.524 ms
# 5.9   rtt min/avg/max/mdev = 0.345/2.095/4.192/1.160 ms
# 5.10  rtt min/avg/max/mdev = 0.345/2.095/4.192/1.160 ms

Single ping session looks like this:

PING 172.31.252.132 (172.31.252.132) 56(84) bytes of data.
64 bytes from 172.31.252.132: icmp_seq=1 ttl=64 time=2.42 ms
64 bytes from 172.31.252.132: icmp_seq=2 ttl=64 time=0.872 ms
64 bytes from 172.31.252.132: icmp_seq=3 ttl=64 time=0.171 ms
64 bytes from 172.31.252.132: icmp_seq=4 ttl=64 time=1.89 ms
64 bytes from 172.31.252.132: icmp_seq=5 ttl=64 time=0.163 ms
64 bytes from 172.31.252.132: icmp_seq=6 ttl=64 time=0.196 ms
64 bytes from 172.31.252.132: icmp_seq=7 ttl=64 time=0.191 ms
64 bytes from 172.31.252.132: icmp_seq=8 ttl=64 time=1.90 ms
64 bytes from 172.31.252.132: icmp_seq=9 ttl=64 time=4.00 ms

No such problem on another NIC (10G X550T).

Using e1000e-3.8.7.tar.gz driver (dkms) didn't help at all.

I'm trying to bisect it right now...

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
