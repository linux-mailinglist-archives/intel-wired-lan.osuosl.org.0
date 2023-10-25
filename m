Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F007D7908
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 01:59:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E44C340990;
	Wed, 25 Oct 2023 23:59:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E44C340990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698278380;
	bh=JcybMX8c4Re2FxnekhoH8x6GeQo5qpHBk/Tyc3AfoHg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rIk9LtRBzsNwdnZDjsbo2LLgCQoX0mOkwlwE9dEIKgIY9KwKEi93hjgy1+57njHgS
	 JByzKXv3zfxlkUmWQDbhYzHAPhSQgxMwJLye05mwQ2X7Xr1SRZF85Ji3cQUkwea7/s
	 z3Lt5rmsYitztcrQli0KHfDsoQhL20m0pXjvKMuLs0kzSKnHLt0ZV6s1q8HWIBqH8p
	 iKPEYONA1TldSQoNJZpTMnuLCBVpCLaKv2JTyJP3EXypau89TQs9Y2WMUPSXT5pHGu
	 zQztOC17QgqvO9OJN1qC6LV2PWgmBqoWj/bJTwlHTjZ2tjO50mau5qRI4RbdSj4nAZ
	 03elFwd+T/8TQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOiBFJg4TUB3; Wed, 25 Oct 2023 23:59:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8560040960;
	Wed, 25 Oct 2023 23:59:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8560040960
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8CF1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 566C760E1B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 566C760E1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uzHvg1yIGJld for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 23:59:32 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0013.hostedemail.com
 [216.40.44.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBB9960BE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBB9960BE2
Received: from omf02.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay10.hostedemail.com (Postfix) with ESMTP id 1F6B1C0B3C;
 Wed, 25 Oct 2023 23:51:48 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf02.hostedemail.com (Postfix) with ESMTPA id 449128000E; 
 Wed, 25 Oct 2023 23:51:37 +0000 (UTC)
Message-ID: <10a072f549e187bc2fdc735c0161c09c90fc1392.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Justin Stitt <justinstitt@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shay Agroskin
 <shayagr@amazon.com>, Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon
 <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>, Saeed Bishara
 <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Dimitris Michailidis
 <dmichail@fungible.com>, Yisen Zhuang <yisen.zhuang@huawei.com>, Salil
 Mehta <salil.mehta@huawei.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, Shannon Nelson
 <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>, 
 drivers@pensando.io, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang
 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
 <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, VMware PV-Drivers
 Reviewers <pv-drivers@vmware.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn
 <lukas.bulwahn@gmail.com>
Date: Wed, 25 Oct 2023 16:51:36 -0700
In-Reply-To: <20231025-ethtool_puts_impl-v1-2-6a53a93d3b72@google.com>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-2-6a53a93d3b72@google.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Stat-Signature: 5zoexpcbspxzknxxpim471w8h6ypycid
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: 449128000E
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+N9jPJtzOomgZCQ3uE45mqLpiTL9MLOGI=
X-HE-Tag: 1698277897-822398
X-HE-Meta: U2FsdGVkX1/piP9epU3PVb8AwxfPnu298LT8+2Ear/QjzRdkg6TlU4ZFVqJStDqO3n+3XE7b+rXjNdVvUiGSpVDrBgNJwbvjRqVhbJYzw3bBx3/mHpMMWU2QA6eLuXuJG9IesNuAClmh2oGyXSTOr5SuM/vS8dt120/ZwdRa0ftJlSyabPiL2I71rQT5u8Z6hamposOtxW8UWys/hMh2ropByFvBIg65AsshQHUvJDmlsWp9lU1T5sJTLuf08ixeHbrY1HQRccfAMy3fhqmlo/ZjQQIgre7Fj+1RAgShAxn1lnKnuxLHp6zSrJJsQib8
Subject: Re: [Intel-wired-lan] [PATCH 2/3] treewide: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2023-10-25 at 23:40 +0000, Justin Stitt wrote:
> This patch converts some basic cases of ethtool_sprintf() to
> ethtool_puts().
> 
> The conversions are used in cases where ethtool_sprintf() was being used
> with just two arguments:
> >       ethtool_sprintf(&data, buffer[i].name);

OK.

> or when it's used with format string: "%s"
> >       ethtool_sprintf(&data, "%s", buffer[i].name);
> > which both now become:
> >       ethtool_puts(&data, buffer[i].name);

Why do you want this conversion?
Is it not possible for .name to contain a formatting field?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
