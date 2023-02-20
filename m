Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C39A69D855
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Feb 2023 03:12:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4FFA70303;
	Tue, 21 Feb 2023 02:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4FFA70303
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676945575;
	bh=ar27mxJOx5EuIYE9NEfaRhLWbeT2fFI7liB0MK1VuYQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O6//L8PRQfjSwbMOuMQBqgZSImJfyzyN0dwbAApo7syuOgv5Hxsk6yUpry6Lel6KC
	 VPtQq5bBGFcbXEWDxbDvKxfTVOKShYwVLzgCh8ifHuy3i+6napnxnwFb9ski3Or3Sv
	 xbkKfr3+3hMMnGROtWA4uvqsj11qiUt2J/iG6wJQHxRovxhUoVYtXVs8NSE21XDjaz
	 TR4DQwxol2CKpCgyUVTDyVO2LbAeLYwSz1HeChvW0iBu/AB3a63EZhM48xU4YlrTkT
	 k7ICI/psuzuv8/zzdxPIFUhz7Cv9jRD2lxzx9duuFCgjl0x3gwKBye7jDdM6+wftt9
	 AOmp7XZIktJHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bGnVdAnWCs_x; Tue, 21 Feb 2023 02:12:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4BF4700D8;
	Tue, 21 Feb 2023 02:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4BF4700D8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03F851BF310
 for <intel-wired-lan@osuosl.org>; Mon, 20 Feb 2023 22:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D09F140199
 for <intel-wired-lan@osuosl.org>; Mon, 20 Feb 2023 22:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D09F140199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FzIrekyp3A2k for <intel-wired-lan@osuosl.org>;
 Mon, 20 Feb 2023 22:20:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE2A740198
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE2A740198
 for <intel-wired-lan@osuosl.org>; Mon, 20 Feb 2023 22:20:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 61518B80D5B;
 Mon, 20 Feb 2023 22:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3994C433D2;
 Mon, 20 Feb 2023 22:20:18 +0000 (UTC)
Date: Mon, 20 Feb 2023 14:20:17 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230220142017.1c0b57be@kernel.org>
In-Reply-To: <SJ1PR11MB618086DCCAE226FC19FDCF54B8A69@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208044536.10961-1-muhammad.husaini.zulkifli@intel.com>
 <9b1b9cdd-eb6f-183a-8e3f-9116a03f27a8@intel.com>
 <SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <SJ1PR11MB618086DCCAE226FC19FDCF54B8A69@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676931619;
 bh=F7s6qXCufUORQji7l3XbLvuKWy259r6T0jr8lqiglYc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u5To4rBzI94Sd6gkz0+pBLLiOcIJjz3yxLNzgWlgq9SW+nlReMSG20Bw0BlR4TcgE
 6z2ABKpFaXlRug5baasqQ0DUm1aytcLJVgp+GeU36z6P44M1Zgup3KysWANGI8CLwf
 UvaDl15fxPCN83fb6vEACPd9ft1VrQitvQPZVbcybxXZerLgzQA3alchomO2DxhI8+
 8zR+6q803/L01S06vsU2Jah65q+9KhPEX3F4Mf88FZFalrZE3MlzJ1PI0sc8uOT8Dv
 afUK+htawxNRDituGlP4hQ8uggg89Pc08a0GzZidEXzlqD0GDxkm+7rEOoenP97kEI
 yIHa6bk/5q0/Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=u5To4rBz
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add transmission
 overrun counter
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 18 Feb 2023 06:19:31 +0000 Zulkifli, Muhammad Husaini wrote:
> Hi Jakub and Vinicius,
> 
> I would appreciate any early feedback or thoughts on this patch submission.
> 
> History of the discussion:
> https://lore.kernel.org/intel-wired-lan/SJ1PR11MB6180D0D59EB01AD1E8FE4991B8A39@SJ1PR11MB6180.namprd11.prod.outlook.com/T/#r8db595a7b40067d2315def91d41c9695454d6c9f

Tony asks very good questions. Driver specific counter always reported
as 0 would be odd for Linux. The counter is of no practical importance.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
