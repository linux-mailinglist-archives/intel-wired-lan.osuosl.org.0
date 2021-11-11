Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9112B44DAC5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 17:50:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 263D640514;
	Thu, 11 Nov 2021 16:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l18qgSw_SOpU; Thu, 11 Nov 2021 16:50:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 325E2404F7;
	Thu, 11 Nov 2021 16:50:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEFE41BF342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 16:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4818404F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 16:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qm1vpgW5x8-7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 16:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF624403F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 16:50:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F1D3B61264;
 Thu, 11 Nov 2021 16:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636649402;
 bh=51HV5mKQra9//QardxIsZThqAWeIEV0HwhilxwaGBn4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IceVoHjviKtrlOA5AThqARgr9Y9AehkaSzV17p2RO0oc8IrsRK9G7S6Za/z+BSLZD
 LbQXulzxt7vvzEf8PrVXEqE3D57WNtk8l2fTj942Bh/RiFNAROGbzB5Hak8c0uqi/C
 CYxu7dmpWE6ccczMhuMOi40PB2bAUqTBNMJ1LdxeBMFKusmRbA3pcj5WwjzhQEx9PI
 eW0DPYiD9+tH8lmgC3uiGSZqH5E6/FLd51x1uviJ76Pdj1bO+BC91OHFoOMmaReu5A
 OFTPwuEIQ0u6J1HL9DTBlq6HbTxCCed7zCbRYX09f4AVi1eZarRnfllH7amhjffruW
 l6ztzkELs2Bkw==
Date: Thu, 11 Nov 2021 08:50:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: kernel test robot <lkp@intel.com>
Message-ID: <20211111085001.24b58b5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <202111112246.M0trEfiC-lkp@intel.com>
References: <20211111090555.158828-1-luo.penghao@zte.com.cn>
 <202111112246.M0trEfiC-lkp@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH linux] e1000e: Delete redundant
 variable definitions
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
Cc: kbuild-all@lists.01.org, cgel.zte@gmail.com, Zeal Robot <zealci@zte.com.cn>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, luo penghao <luo.penghao@zte.com.cn>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 11 Nov 2021 22:56:38 +0800 kernel test robot wrote:
> >> drivers/net/ethernet/intel/e1000e/e1000.h:31:20: error: 'hw' undeclared (first use in this function)  
>       31 |         netdev_dbg(hw->adapter->netdev, format, ## arg)

Yeah, the infinite wisdom of Intel drivers using macros with implicit
arguments :/

You should build test your patches, tho.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
