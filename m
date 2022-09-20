Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5505BECE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 20:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2EC360F2F;
	Tue, 20 Sep 2022 18:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2EC360F2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663698993;
	bh=hiRu3aYLxdUN+o24+aN7X+BhRomdrglfrdUWQMBemeQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0JHpNh//K0m9P3ZBkPTT/yA/ZLfhlMs+DYIrmSMeJ8e1zu2OxRIoBHr8A3GNS9gDg
	 cmeC8aHbzoduIWwI1w4xirsWDC7Gfmfr3AT9A78KHPcCgDlpv2NazwQCuR7ZEwEZlO
	 lkJmOFoYSlf3U2jYQ3NrunvjtKlYZDx9PWDMa0DlSWgtJpoeFwRIY5LddBUr8MYKhU
	 lFqw2nLeCQLqfl2Cd+lbNDV5lFhHIuedE6HQW2pp8c5qPHL9mJR1VUzwrZWthpw2kc
	 8gcBgSnbDCq8T6uOWb3mN5igkYvqMpWix90TfSnVwxLsoEfDSO0vqoXWZwqGGlVUe3
	 9YiVHuBWdhHRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iadssObtkGjP; Tue, 20 Sep 2022 18:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC3D660F71;
	Tue, 20 Sep 2022 18:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC3D660F71
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84D031BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 18:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A47882849
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 18:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A47882849
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0oSanNa0DK9l for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Sep 2022 18:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 177B382848
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 177B382848
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 18:36:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F36F662C79;
 Tue, 20 Sep 2022 18:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 016C4C433C1;
 Tue, 20 Sep 2022 18:36:23 +0000 (UTC)
Date: Tue, 20 Sep 2022 11:36:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Li Zhong <floridsleeves@gmail.com>
Message-ID: <20220920113623.2f041e80@kernel.org>
In-Reply-To: <20220917001027.3799634-1-floridsleeves@gmail.com>
References: <20220917001027.3799634-1-floridsleeves@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1663698984;
 bh=j06Czh6fa3r451X6L5qEQHRqs8sdGXQ7HkWUYOH22c8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gu4/i48+XxWPr1uruu55gEbwTWHJlH+OG28dQQm/ENFadcXowBBkssb6Vch85U07v
 FC3Wu23m7IyrejC2Y/rmkPW/6t2YQx8bLJ/zF/iEpTQ0qIhfswzGC0/HYVUI3GLlOq
 7mwoc8ULpUamqtWtggk9WflM3sTQCQTaEtPJcBNRF0Rq1xWxl5thXLDSbT9zlTStKQ
 h8MNWmtgOkrVMJBENQnFIfci3FfuSNkK0CRhPmer2LG5SxhAGgkIF0FgRjxD14+haW
 Y2P2DK3sVTDIP99CkHVXq/3H35R6vuXvUdZBYxs9o7yg85ThSceuu8+MHzYw1MqRdE
 /lrhERQqzZ6OQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gu4/i48+
Subject: Re: [Intel-wired-lan] [PATCH v2] drivers/net/ethernet/intel/e100:
 check the return value of e100_exec_cmd()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 16 Sep 2022 17:10:27 -0700 Li Zhong wrote:
> Check the return value of e100_exec_cmd() which could return error code
> when execution fails.

You need to provide more detailed analysis in the commit message.
Right now it looks like you're just blindly finding cases where
return value is not checked and adding error checks. This is as
likely to fix something as it is to break.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
