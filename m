Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABBE78452E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F155860AB7;
	Tue, 22 Aug 2023 15:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F155860AB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692717185;
	bh=ru8OzeJNcwyPQXLrUkjq4Wo6u3Hu8/AOcXfKA0xue8I=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dFs7/e/+03fITCBiNeX1CC7tv4ijilWxWg9BuAJQK3eS29WC1SAhwlwsWpgE+g9Wa
	 hus7qebFDl9ipgdVOGSB88ApHMItRiJ7z/6OJqfPzhElAWB1RUzUKuT0b/qNWHy5e9
	 jEIk7BSF3AGLanrrFZgkqL+/oqz8B3v1FBTtiFnxNqicIruRSb7wTUV3JKZ0pjG1dr
	 YZT8yn9t6nrI5WGT3o0uWO/bjDQM/AdicEmwLjSJZfiFhmDuckmcy83mwPLAtUu/Sz
	 2tZM17FfD381jxHnpSwaC0QdSFkvjzetewD19i1nKvaxoOS1MTRIxcStYC6L45RE7f
	 z1AU9xx7R+LCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qH6l3FDDfzA2; Tue, 22 Aug 2023 15:13:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 030DC607B0;
	Tue, 22 Aug 2023 15:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 030DC607B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34FF31BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D1DF607B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D1DF607B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7NswfD7WvNsj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 15:12:58 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 764E560776
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 764E560776
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A54BA621E5;
 Tue, 22 Aug 2023 15:12:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCB7CC433C7;
 Tue, 22 Aug 2023 15:12:56 +0000 (UTC)
Date: Tue, 22 Aug 2023 08:12:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20230822081255.7a36fa4d@kernel.org>
In-Reply-To: <ZORRzEBcUDEjMniz@nanopsycho>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692717177;
 bh=SDTz5ot6TCb02ZDMISMKb+snwaqJ5DTq12W2yyBuf38=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jADm5rj0BUxJdpJEZeOBC/lvTE585n4ykOkZs7/TvcOXdl35W2CAYPk15xRMDj9aX
 RfKaOl4qN6VHAsKO70+0J+zRLcfZUwYyVQZXuVxzPkBRb56UTEX6yLC7R2VKoX7Ii3
 Mr1JBSifFsR4uEL61cJdQFF9FloTrc1oNyslGPIz+1Bbwo5swxe+bu/2tc148uQ58t
 ggi3E6CbMe9xfXDzF0A6CmcA7GMTCg3BOxnyt6S5vUdy7y03rHbOi9bT6yeC0CM7OX
 TPAIAeDNowtAEzNf4KtOivvbaGtgVOdLg3FaXjYSVqX1ZfkvQyL1DEZGMLSTUJ/LvY
 qUlfBLmHfyoVw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jADm5rj0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 qi.z.zhang@intel.com, anthony.l.nguyen@intel.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
> NACK! Port function is there to configure the VF/SF from the eswitch
> side. Yet you use it for the configureation of the actual VF, which is
> clear misuse. Please don't

Stating where they are supposed to configure the rate would be helpful.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
