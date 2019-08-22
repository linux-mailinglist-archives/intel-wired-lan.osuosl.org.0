Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D649A3CB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 01:27:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E536487A22;
	Thu, 22 Aug 2019 23:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XcyTItE7YZkg; Thu, 22 Aug 2019 23:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E3F98796A;
	Thu, 22 Aug 2019 23:27:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC2CF1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 23:23:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5542878D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 23:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Go+srZuVfAvW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 23:23:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 117E2821E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 23:23:41 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id DF6051539DF80;
 Thu, 22 Aug 2019 16:23:39 -0700 (PDT)
Date: Thu, 22 Aug 2019 16:23:39 -0700 (PDT)
Message-Id: <20190822.162339.831735149510227752.davem@davemloft.net>
To: Markus.Elfring@web.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
References: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 22 Aug 2019 16:23:41 -0700 (PDT)
X-Mailman-Approved-At: Thu, 22 Aug 2019 23:27:35 +0000
Subject: Re: [Intel-wired-lan] 
 =?iso-2022-jp?b?W1BBVENIXSBldGhlcm5ldDogRGVs?=
 =?iso-2022-jp?b?ZXRlIHVubmVjZXNzYXJ5IGNoZWNrcyBiZWZvcmUgdGhlIG1hY3JvIGNh?=
 =?iso-2022-jp?b?bGwgGyRCIUgbKEJkZXZfa2ZyZWVfc2tiGyRCIUkbKEI=?=
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
Cc: kstewart@linuxfoundation.org, michael.heimpold@i2se.com,
 kernel-janitors@vger.kernel.org, wsa+renesas@sang-engineering.com,
 weiyongjun1@huawei.com, opensource@jilayne.com,
 linux-stm32@st-md-mailman.stormreply.com, stefan.wahren@i2se.com,
 opendmb@gmail.com, yuehaibing@huawei.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, ynezz@true.cz,
 bryan.whitehead@microchip.com, alexandre.torgue@st.com,
 jonathan.lemon@gmail.com, yang.wei9@zte.com.cn, alexios.zavras@intel.com,
 claudiu.manoil@nxp.com, f.fainelli@gmail.com, swinslow@gmail.com,
 shannon.nelson@oracle.com, peppe.cavallaro@st.com, tglx@linutronix.de,
 zhongjiang@huawei.com, allison@lohutok.net, nico@fluxnic.net,
 gregkh@linuxfoundation.org, dougmill@linux.ibm.com,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com, mcgrof@kernel.org,
 mcoquelin.stm32@gmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Markus Elfring <Markus.Elfring@web.de>
Date: Thu, 22 Aug 2019 20:30:15 +0200

> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Thu, 22 Aug 2019 20:02:56 +0200
> 
> The dev_kfree_skb() function performs also input parameter validation.
> Thus the test around the shown calls is not needed.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

Applied.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
