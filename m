Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A94C722B769
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 22:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 48772228A7;
	Thu, 23 Jul 2020 20:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2Ut2wyCZSXz; Thu, 23 Jul 2020 20:18:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92CD522865;
	Thu, 23 Jul 2020 20:18:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CDD81BF29A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 20:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8713C88936
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 20:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQ77P7suBLxA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 20:18:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7919C888FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 20:18:03 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 901F111E48C65;
 Thu, 23 Jul 2020 13:01:16 -0700 (PDT)
Date: Thu, 23 Jul 2020 13:17:58 -0700 (PDT)
Message-Id: <20200723.131758.642362772753839021.davem@davemloft.net>
To: anthony.l.nguyen@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <bfa03cf8613ada508774a2e6e89b9b01bfd968dd.camel@intel.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <1af4aea7869bdb9f3991536b6449521b214ed103.camel@intel.com>
 <bfa03cf8613ada508774a2e6e89b9b01bfd968dd.camel@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 23 Jul 2020 13:01:16 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/7] udp_tunnel: convert
 Intel drivers with shared tables
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Date: Thu, 23 Jul 2020 20:06:15 +0000

> On Wed, 2020-07-22 at 14:22 -0700, Tony Nguyen wrote:
>> On Tue, 2020-07-21 at 18:27 -0700, Jakub Kicinski wrote:
>> > This set converts Intel drivers which have the ability to spawn
>> > multiple netdevs, but have only one UDP tunnel port table.
>> > 
>> > Appropriate support is added to the core infra in patch 1,
>> > followed by netdevsim support and a selftest.
>> > 
>> > The table sharing works by core attaching the same table
>> > structure to all devices sharing the table. This means the
>> > reference count has to accommodate potentially large values.
>> > 
>> > Once core is ready i40e and ice are converted. These are
>> > complex drivers, and I don't have HW to test so please
>> > review..
>> 
>> I'm requesting our developers to take a look over and validation to
>> test the ice and i40e patches. I will report back when I get results.
> 
> Would you mind if I pick these patches up into Jeff's tree? It will
> make it easier to test that way.

No objections on my end, and you can add my:

Acked-by: David S. Miller <davem@davemloft.net>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
