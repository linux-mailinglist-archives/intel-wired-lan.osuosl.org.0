Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DCC4F5A72
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 12:09:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF6EF81934;
	Wed,  6 Apr 2022 10:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XqcyOdXgu-s4; Wed,  6 Apr 2022 10:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8D67817C0;
	Wed,  6 Apr 2022 10:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 876471BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 10:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74478417BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 10:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p0oJD9sCQ8gJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Apr 2022 10:09:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9974C417B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 10:09:35 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef4f.dynamic.kabel-deutschland.de
 [95.90.239.79])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1DABC61E64846
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Apr 2022 12:09:32 +0200 (CEST)
Message-ID: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
Date: Wed, 6 Apr 2022 12:09:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] I218-LM uses > 1 W with low traffic
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Linux folks,


On a Dell Latitude E7250 with Debian sid/unstable, PowerTOP 2.14 reports 
the network device uses over 1.5 Watt, which is almost ten percent of 
the whole system.

       1.62 W    435,9 pkts/s                Device 
Netzwerkschnittstelle: eno1 (e1000e)

     $ lspci -nn | grep Ether
     00:19.0 Ethernet controller [0200]: Intel Corporation Ethernet 
Connection (3) I218-LM [8086:15a2] (rev 03)
     $ uname -a
     Linux ersatz 5.17.0-trunk-amd64 #1 SMP PREEMPT Debian 5.17.1-1~exp1 
(2022-03-29) x86_64 GNU/Linux

 From atop:

     NET |  eno1      0% |  pcki    2421 |  pcko    2194 |  sp 1000 Mbps 
|  si 1501 Kbps  | so  140 Kbps  | erri       0  | erro       0  | drpo 
      0  |

So I receive 1.5 Mbps, and send 0.14 Mbps.

Is such high energy usage expected of the network hardware?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
