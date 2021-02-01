Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFFB30B18D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 21:25:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C07988671C;
	Mon,  1 Feb 2021 20:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JhDSeKykNyQ; Mon,  1 Feb 2021 20:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F2DF866F8;
	Mon,  1 Feb 2021 20:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51F8D1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 495DB20798
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G8hzaDF4Kk9Z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 20:21:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.as397444.net (mail.as397444.net [69.59.18.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EA6A52052A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 20:21:49 +0000 (UTC)
Received: by mail.as397444.net (Postfix) with UTF8SMTPSA id 0E37547C3B1;
 Mon,  1 Feb 2021 20:21:47 +0000 (UTC)
X-DKIM-Note: Keys used to sign are likely public at https://as397444.net/dkim/
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bluematt.me;
 s=1612209662; t=1612210907;
 bh=aect8PShZE46N9WA+IGOwO8CytrHGKQpBzudjDAn4tw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=TxMMtGmLyFm0ZwjS4MyI5czW7PJjxDf702Dsv3wNCmnx3/tVQi6TaOBTxs8WsAADX
 U2lZegk82/tcnCqgxGnvvZ6Nxlm74b+l7osGXxw6UDOlbVdOY30KMMn9qE0aeH6tLl
 WG0mVU+xsuNeQg5S6mvFMkBXzMEi+qseafZ1iusiyWWeunAdklzm0M2y/5WtYOBKIW
 t+U97VfcSNm7jQfy5f/RuI0E6+d4h78ed2gXhx198CxPIwJOthTh5x9M6TQUNPlFlB
 GK5h5GSDEjOrZI9smoa9vk0ZWRreyzCXaqbAWMOO3knam+YhghECahNARLjBBzH3Y6
 5u4VbPcuAIXSg==
To: Jakub Kicinski <kuba@kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Matt Corallo <linux-wired-list@bluematt.me>
Message-ID: <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
Date: Mon, 1 Feb 2021 15:21:46 -0500
MIME-Version: 1.0
In-Reply-To: <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 01 Feb 2021 20:25:32 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wired-list@bluematt.me" <linux-wired-list@bluematt.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "nick.lowe@gmail.com" <nick.lowe@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/1/21 2:45 PM, Jakub Kicinski wrote:
> Matt, would you mind clarifying if this is indeed a regression for i211?
> 

Admittedly, I didn't go all the way back to test that it is, indeed, a regression. The Fixes commit that it was tagged 
with on Tony's tree was something more recent than initial igb landing (its a refactor of RSS) and there are numerous 
posts online indicating common I211 hardware (eg PCEngines APU2) support RSS and properly load multiple cores, so I 
naively assumed that it is a regression of some form.

Did you test kernels odler than c883de9fd787, Nick?

Given that, and the non-invasive nature of the patch, I figured it was worth trying to land on LTS trees and going ahead 
with it for 5.11, but I don't feel strongly on how it ends up on LTS, it just seems a waste to not land it there.

Matt
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
