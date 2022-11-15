Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 383EC62A351
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 21:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A4BE80A65;
	Tue, 15 Nov 2022 20:48:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A4BE80A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668545309;
	bh=YomTB3WgRDU1SDdCsHVLHAJPXhFndxXBwKGwer8R7G4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qg00fJXSKpizMdMD68FILj++B3OlBB9zKeqnA9BuR6FzH4qFmKIDRrJS96iBc4Umu
	 ZQ4V86CJzMcaEsGaIVip5xpjbmxwT5T4XUm7GNGcL9kaAw8cjasXCGmg/NTwPqXKA9
	 rwwQBEunjlpUXGgS2VMVOC3pdBtVXXHZELjLP+LIrnesNyJM5z5Zc/uMpJNW4xcp9b
	 6Xi4Vnon3yPbrurrg43QTnu+4KoZNp8q31mos/FZHUpw+U/PcyMHyhU+8sEE9Bqxvv
	 GLDVcu3YKEocWFH2g9e2hjDFrTBLpExl0WB8STI5xLM6koxKJlEKv/95wNK2bXH8+x
	 efOdt3A3TzK5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U09mLKdeRdlY; Tue, 15 Nov 2022 20:48:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61DD581D70;
	Tue, 15 Nov 2022 20:48:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61DD581D70
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 310BC1BF863
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 20:48:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B5EA401AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 20:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B5EA401AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8iuEL8MIBcC9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 20:48:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A34340138
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A34340138
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 20:48:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EF24661A33;
 Tue, 15 Nov 2022 20:48:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9975C433D6;
 Tue, 15 Nov 2022 20:48:19 +0000 (UTC)
Date: Tue, 15 Nov 2022 12:48:15 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Shang XiaoJing <shangxiaojing@huawei.com>
Message-ID: <Y3P7Dzw4OWDxb33S@x130.lan>
References: <20221114025758.9427-1-shangxiaojing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114025758.9427-1-shangxiaojing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668545299;
 bh=ILRVsCQiGvGye1pKEuAHJ09D34XQZY9BESvUzl5PMLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QOpAQZmyW9JzxFaL0e1HbN02QSQiXT/JYKoy9CItkjUlxUAO+T0tvAunQltKi1NXu
 PQDyjxHaXmdiCDvKWf2jP7469OAPs8jAZ29aTnWOp8SC5ME4mxz6JCDi2Y1NsBm0C8
 yEuHUJmXshu7qDaImpQq/yaU7qaiQEE5gYloYCJtGnp4Lni9Ug36v7lJBacaIMst8z
 bXaDuLmL5q6lKlJZpdeBTbtD359IfEotxpir3bdTMhVtEnebdPEhFO6vS6HosCHhyi
 +KzRp9ofUZc6LGbZ9B0eUk/rmoTj4Gj1xkiHjduTbCzCefUtm3m9RpmqOEq7MrLEJk
 gWtBlT+OQ8fDA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QOpAQZmy
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: Fix resource leak in
 ixgbevf_init_module()
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
Cc: intel-wired-lan@lists.osuosl.org, edumazet@google.com,
 jeffrey.t.kirsher@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 14 Nov 10:57, Shang XiaoJing wrote:
>ixgbevf_init_module() won't destroy the workqueue created by
>create_singlethread_workqueue() when pci_register_driver() failed. Add
>destroy_workqueue() in fail path to prevent the resource leak.
>
>Similar to the handling of u132_hcd_init in commit f276e002793c
>("usb: u132-hcd: fix resource leak")
>
>Fixes: 40a13e2493c9 ("ixgbevf: Use a private workqueue to avoid certain possible hangs")
>Signed-off-by: Shang XiaoJing <shangxiaojing@huawei.com>

Reviewed-by: Saeed Mahameed <saeed@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
