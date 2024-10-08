Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E599995B8B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 01:21:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BE12405C9;
	Tue,  8 Oct 2024 23:21:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v_I2B9CvjyPZ; Tue,  8 Oct 2024 23:21:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ACB5405CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728429682;
	bh=TSCizON5lR9Cjf1v9ABJPi4tqtOgZIyr2vFmSq606gs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RoFcVQVbylyUOkS7qMad/wBe0T8a7epsSAM0XxS7LoEQuhNYp0exL4Yl+3ikhN6fE
	 aO4v8HgB+Qce3ZOMKsvb889c/JZJhuKS+DPMbMWl4tA9GdZX13ROVrqp161mNM6f3X
	 5Ky8IvvFb41eFwxICeLJi/hnlVVMbb40V5CiDZgWdnIsVY0o0HNnvQKeykBTi6GJup
	 X8Bn8vGW1KItD3DyMwclqCUkIFUJ+ZMu+QMzSKs9KCR7Vu5akeXjXkMJiZR7tu6cus
	 fZrFCdaCsEKQKtWtpTpY6JiAUexZKDs7Sw2WOuEpF4kJazX3Xo1Kre52783bD9j3Ig
	 nYqSJ/PXFOk7A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ACB5405CE;
	Tue,  8 Oct 2024 23:21:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEC601BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C5EC6069D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7Vbxi9BCYXF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 23:21:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 07E606069B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07E606069B
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07E606069B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 23:21:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DF97EA43793;
 Tue,  8 Oct 2024 23:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E94AC4CEC7;
 Tue,  8 Oct 2024 23:21:17 +0000 (UTC)
Date: Tue, 8 Oct 2024 16:21:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20241008162116.7c63d85a@kernel.org>
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728429678;
 bh=TSCizON5lR9Cjf1v9ABJPi4tqtOgZIyr2vFmSq606gs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ILumA5YDIdjkZdG4Soz78Qc/eorLST1D2LkCxrxLpHQZQv2LKSCYDWMx7xNoTnw4c
 wVlIZ2VKwn3/1xS0+Vcro2s5bzsQ7Ugz9HTcnRbliBZIBIXPGzs92V6of855bb+JGD
 bhw6SyC6+vfnIHsz/fnEhDJqXGCQWTtXXWZvx4ZZDT7fYbcazLoTparSYaU5HDcOyy
 NMVvFyfJSqIDXg/yZLy2IF9Rw3V9FnL10AhYZ0q+9WmZ4hLdUbGJX4y01oPzNee7Ba
 XM6z0oJj7yVEUUbLoSDF30ZzUdDuirceucvcO9ozEdhlzSEeqWEe1F4juRlyqx5+1M
 3QxQqNOUwGFpw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ILumA5YD
Subject: Re: [Intel-wired-lan] [PATCH v8 net-next 00/15] net: introduce TX
 H/W shaping API
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 30 Sep 2024 15:53:47 +0200 Paolo Abeni wrote:
> We have a plurality of shaping-related drivers API, but none flexible
> enough to meet existing demand from vendors[1].

Does not apply, you'll have to repost.
