Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ECD3C937C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jul 2021 00:00:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67246414B5;
	Wed, 14 Jul 2021 22:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUHXiJqhgYZL; Wed, 14 Jul 2021 22:00:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F48A414C0;
	Wed, 14 Jul 2021 22:00:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F8FF1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 22:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A8BF4026B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 22:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nX_uS0Mpz6rB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 22:00:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E2EB40100
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 22:00:38 +0000 (UTC)
Received: from famine.localdomain (1.general.jvosburgh.us.vpn [10.172.68.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 194E140616; 
 Wed, 14 Jul 2021 22:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626300036;
 bh=ERoUc/vzyGCRXP8MOtYZ/pVSmZpxoxwUYE99SyGVTro=;
 h=From:To:Subject:MIME-Version:Content-Type:Date:Message-ID;
 b=tVnU79lBWU7ZF93LXSUwyakQQjPlWXSTH317+JZ5IHPmbp2cgO8u8QJr0Go/TPcy4
 ApgeQ6zG2KuY59eSi0cYqOPiiIS5IJmo792Tn9/8goK9T7Yu4ltH7ZZTuz0PdYrzie
 mOXPHfEy78TLUtV5ujgHLp6A06GfqBvrY6WuvVyHifTKpZz1sjh+q2LAv33gnuET/V
 L4FFcYzIajVAO/0J8S1Qfup7faWpXSRphPEBal0jsIYtVipjDx24jYgtfL97DfpWc4
 byXG9vxZCyz8xtKIciqr99mOFWFtpO3bCYGOdQeC20zxycyHB8YnzIEQMceVX4zNok
 nX6imWQwQdRgA==
Received: by famine.localdomain (Postfix, from userid 1000)
 id 689095FBC1; Wed, 14 Jul 2021 15:00:34 -0700 (PDT)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 61C40A040B;
 Wed, 14 Jul 2021 15:00:34 -0700 (PDT)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Taehee Yoo <ap420073@gmail.com>
In-reply-to: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Comments: In-reply-to Taehee Yoo <ap420073@gmail.com>
 message dated "Mon, 05 Jul 2021 15:38:05 -0000."
X-Mailer: MH-E 8.6+git; nmh 1.6; GNU Emacs 27.0.50
MIME-Version: 1.0
Content-ID: <25260.1626300034.1@famine>
Date: Wed, 14 Jul 2021 15:00:34 -0700
Message-ID: <25261.1626300034@famine>
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/9] net: fix bonding ipsec
 offload problems
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
Cc: netdev@vger.kernel.org, dsahern@kernel.org, vfalico@gmail.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 andy@greyhouse.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Taehee Yoo <ap420073@gmail.com> wrote:

>This series fixes some problems related to bonding ipsec offload.
>
>The 1, 5, and 8th patches are to add a missing rcu_read_lock().
>The 2nd patch is to add null check code to bond_ipsec_add_sa.
>When bonding interface doesn't have an active real interface, the
>bond->curr_active_slave pointer is null.
>But bond_ipsec_add_sa() uses that pointer without null check.
>So that it results in null-ptr-deref.
>The 3 and 4th patches are to replace xs->xso.dev with xs->xso.real_dev.
>The 6th patch is to disallow to set ipsec offload if a real interface
>type is bonding.
>The 7th patch is to add struct bond_ipsec to manage SA.
>If bond mode is changed, or active real interface is changed, SA should
>be removed from old current active real interface then it should be added
>to new active real interface.
>But it can't, because it doesn't manage SA.
>The 9th patch is to fix incorrect return value of bond_ipsec_offload_ok().
>
>v1 -> v2:
> - Add 9th patch.
> - Do not print warning when there is no SA in bond_ipsec_add_sa_all().
> - Add comment for ipsec_lock.
>
>Taehee Yoo (9):
>  bonding: fix suspicious RCU usage in bond_ipsec_add_sa()
>  bonding: fix null dereference in bond_ipsec_add_sa()
>  net: netdevsim: use xso.real_dev instead of xso.dev in callback
>    functions of struct xfrmdev_ops
>  ixgbevf: use xso.real_dev instead of xso.dev in callback functions of
>    struct xfrmdev_ops
>  bonding: fix suspicious RCU usage in bond_ipsec_del_sa()
>  bonding: disallow setting nested bonding + ipsec offload
>  bonding: Add struct bond_ipesc to manage SA
>  bonding: fix suspicious RCU usage in bond_ipsec_offload_ok()
>  bonding: fix incorrect return value of bond_ipsec_offload_ok()
>
> drivers/net/bonding/bond_main.c            | 181 +++++++++++++++++----
> drivers/net/ethernet/intel/ixgbevf/ipsec.c |  20 ++-
> drivers/net/netdevsim/ipsec.c              |   8 +-
> include/net/bonding.h                      |   9 +-
> 4 files changed, 178 insertions(+), 40 deletions(-)

	The bonding portion looks good to me.

Acked-by: Jay Vosburgh <jay.vosburgh@canonical.com>

	-J

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
