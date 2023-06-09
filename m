Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C56372A6B4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 01:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7378A41A39;
	Fri,  9 Jun 2023 23:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7378A41A39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686353274;
	bh=9FHhLR/axdhagvkbHGwZkpjzoecbWDLUP/y2wFKXrKI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6z66YISNMrA+fItqBMBkGfDpsQDpcvKVvlna/vAaP4ur9pWx0fcctMqrY+BLogp+F
	 y2ZwfElGLQWT2UFY6KPTlJocsS8JRwzxat3j8d1gsUSi622oS9skSr+GAE+RpREUHQ
	 v+8UspgGnpiYFlVxV974AN4sej9kEXAoeazKn9/ztSxU6YQUDIKcQ8zw3w3yE29+ax
	 SeefHCzIU/2hGz3W7ostUNZ2BQsA69IYOx+gR9/FE0r8I6vx8T4mBk5lasp5LK9ecL
	 yrK1Wa7Q8Q6LxFq4UDldfg6h0B3Eu2gFXQetmp2Q9VyJ062R96ElZ+qVsJ84wfX1/d
	 2dxGQg9+eslsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQsJtFPcdzta; Fri,  9 Jun 2023 23:27:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5424C400F8;
	Fri,  9 Jun 2023 23:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5424C400F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B9A61BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 23:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69FD96114E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 23:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69FD96114E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KA88mzjsY3Jt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 23:27:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9847560AFE
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9847560AFE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 23:27:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 59A80618D7;
 Fri,  9 Jun 2023 23:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ABABC433D2;
 Fri,  9 Jun 2023 23:27:40 +0000 (UTC)
Date: Fri, 9 Jun 2023 16:27:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20230609162739.0d94a704@kernel.org>
In-Reply-To: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686353262;
 bh=LhcK1dVS/ODURx+/PKNTsLc8985DDWmW1YmahU/XwI8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oe+mJXeo6zzuE2GSIILaWA014EJ0/y1TG6erjhnN7raTZqCGevhGZBjVONwYd565u
 LaIlt5Da9w3UC2npEHEhdbpajaiMq/BT7IUZb88vq7nVNODU9P3kfw6KRCJpmCSaqi
 L8yC0LVf9b10zxZiFcQt0czKjDNS0z43jMTp3npICWRs9hdsh+8maPXv0pJt400qlv
 dUXvUk/lc4raRvB2SnN6cJ3ifJqFMe3tQATshe4JaxB3EkJFUdoektHcksejFzHiVv
 zAaDW+7TKjtn0y6kKOSoW8QCABYxGwaeg9DiYAo3JXufGmDfESe2CuglPmIN2KEqrO
 HoxeBwhXY0BcA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oe+mJXeo
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, jiri@resnulli.us, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  9 Jun 2023 14:18:43 +0200 Arkadiusz Kubalewski wrote:
> Implement common API for clock/DPLL configuration and status reporting.
> The API utilises netlink interface as transport for commands and event
> notifications. This API aim to extend current pin configuration and
> make it flexible and easy to cover special configurations.
> 
> Netlink interface is based on ynl spec, it allows use of in-kernel
> tools/net/ynl/cli.py application to control the interface with properly
> formated command and json attribute strings. Here are few command
> examples of how it works with `ice` driver on supported NIC:

Now I see why you sent the ynl-gen patch you sent :) It's the
combination of nest and multi-attr which doesn't populate the right
policy. Also the enums are not policed right by ynl-gen.

I pushed two fixes to my local tree:
https://github.com/kuba-moo/linux/commits/ynl-c
in case you need them. I'll submit them on Monday.

I also tried to run the user space C code gen (for generating C
API/lib as described in [1]). It seems to work just fine, FWIW, so
just LMK if C bindings would be useful, I can give more instructions.

[1] https://docs.kernel.org/next/userspace-api/netlink/intro-specs.html#ynl-lib
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
