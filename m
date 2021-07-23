Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BB73D3A37
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jul 2021 14:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB198405DA;
	Fri, 23 Jul 2021 12:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGkY-s2Pq8y9; Fri, 23 Jul 2021 12:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3ECB405D5;
	Fri, 23 Jul 2021 12:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7508B1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 12:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 604274021B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 12:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQiE1TMB4XZp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jul 2021 12:28:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5417A400A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 12:28:52 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C658661E6478B;
 Fri, 23 Jul 2021 14:28:48 +0200 (CEST)
To: David Ertman <david.m.ertman@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <04a175b6-797c-ab25-dbd4-f8bdbb165674@molgen.mpg.de>
Date: Fri, 23 Jul 2021 14:28:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-wired-lan] What to do with info log message: `e1000e: EEE TX
 LPI TIMER: 00000011`?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear David, dear Linux folks,


On several devices, like the Dell OptiPlex 3620, Linux 5.10.47 (and 
others) log the message below with info level (often during shutdown):

     e1000e: EEE TX LPI TIMER: 00000011

     $ git grep "LPI TIMER"
     drivers/net/ethernet/intel/e1000e/netdev.c:     pr_info("EEE TX LPI 
TIMER: %08X\n",


What information is that supposed to provide? For a normal user it looks 
like spam.

Could you please extend the message what to do about it? Or should it be 
made a debug message?


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
