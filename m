Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 696337D8BA9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:26:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4F0D4C5A3;
	Thu, 26 Oct 2023 22:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4F0D4C5A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698359166;
	bh=wTrxNCv3iU/rZhJqUCZ2pYV63hvGfZJsHc2CHfJoE+s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4xywTbfuRDhqWQfXrK767KWJvVIlG14zCN/wF2PAsTPg8cgwIzTNl18VY6rqgXzHk
	 pAzRDPnP0nfs+/oDWUS7xyjIJRhN7E3tag/bahgwUhkBAEBi7vw/Yeq9sYxee2ECbw
	 s8cGdq7F5F67oEm+VcaEU6NuKOE2JyM0hUhJzD8LVdocekd3nSxlR75o67S/TTU4mh
	 iJPunrg4l0NvCYyjXDpx+APBCxmNe5r7n7NDU4vgdbpcwmeT5rET3lar1eakcAbetu
	 0YmSi55iIOOtIasVLSmCrtL8jwBQiCWVvEBbew1Updfb8pLTMWwJsoqBTvf8N2Nr+8
	 GYt31/kNnsfYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOzKBVtyAmsU; Thu, 26 Oct 2023 22:26:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B68E04C2EB;
	Thu, 26 Oct 2023 22:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B68E04C2EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A2371BF364
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 215164C2EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 215164C2EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P5lBtYxsdpQd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:25:55 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BFAE14BD65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BFAE14BD65
Received: by mail-lj1-x230.google.com with SMTP id
 38308e7fff4ca-2c504a5e1deso23713231fa.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698359152; x=1698963952;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=k5p4Mh/OXx/If7dQQRvDkjUM/vaepawDRdGrZy7iw80=;
 b=nL6CRMVb6lFXo/+5v9rbB5Khcb5Q6ZC76ondyEzX53MYQ3qMKDZMZuVE/aN6N2t2To
 a62Q+pi/ZtFoO+wB+WIXJhbKMmwBcStNPW96c/BAbEtljzVDlFArPR9piLnG/wh6eeMG
 CXMzx/3lURakh0LdX4Mi677DbgOwkxhaPZOAYbnsHvXNWxCuvf3JMptp+lpm3gQYWxee
 eA29Kg1EsjuBm755Hy2+SCrPu9fXxIzu4+6yMAY82BUesSs3qXYpNpsuu76In/J8MHMS
 js19TZyj47HWc+yTX+4v9wew1NTjYRS1r6uHjN+zadp8xqG4VpBCcIgBL084FfvgTU/e
 y8dg==
X-Gm-Message-State: AOJu0YxqUw7J3RzrPfvEnTT0BE5YbCpFzYhQip5zTnxWElpOQalerumx
 2MKpqfvNm/VuZB4f3yTfkTE=
X-Google-Smtp-Source: AGHT+IEo8OAfPWEktKMivKvhtgoDHKwvxythYXL179zpbTtMYmD2w6YdRdxd0nPaYjk3FRGKDLz64g==
X-Received: by 2002:a2e:8295:0:b0:2c5:1d95:f7a1 with SMTP id
 y21-20020a2e8295000000b002c51d95f7a1mr708686ljg.27.1698359152188; 
 Thu, 26 Oct 2023 15:25:52 -0700 (PDT)
Received: from skbuf ([188.26.57.160]) by smtp.gmail.com with ESMTPSA id
 er14-20020a05600c84ce00b004064cd71aa8sm106688wmb.34.2023.10.26.15.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 15:25:50 -0700 (PDT)
Date: Fri, 27 Oct 2023 01:25:48 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026222548.rqbp5ktgo2mysl6w@skbuf>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
 <20231026220248.blgf7kgt5fkkbg7f@skbuf>
 <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698359152; x=1698963952; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=k5p4Mh/OXx/If7dQQRvDkjUM/vaepawDRdGrZy7iw80=;
 b=Rv158pmYKtXMTMpcwZUEPsSCrGgcx3W+u/9Vy9i0wpua/bGCR/aqVdkjKBuoFddAdI
 HjnjKs0+LMKXVrH7qUFWnitry4CF50K8g36YhDBvnu8yZKCt7atdea4NUh8hxW5HJ+Fr
 vhfiPrCudYvLxGuKELoRzBUW8ifQlvgYI7IR/j+CQrHrgRc50db/PeqDFrmrQU0FHRbz
 C05AyXl3AQ6a66g9Ga9QbyWY7I2oFml0EiO7AlR35lwMMvkHu82C0tpOqkxpLc5ofevX
 w5spJ+D0N2D9TKqc0wbJBj1pkGMLIpqeB/NT/VFTgSzNAPAc2QerbnqF78Ezft8Zk6yS
 gPsA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Rv158pmY
Subject: Re: [Intel-wired-lan] [PATCH next v2 1/3] ethtool: Implement
 ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, oss-drivers@corigine.com,
 intel-wired-lan@lists.osuosl.org, linux-mediatek@lists.infradead.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 26, 2023 at 03:09:59PM -0700, Justin Stitt wrote:
> Should I undo this? I want my patch against next since it's targeting
> some stuff in-flight over there. BUT, I also want ethtool_puts() to be
> directly below ethtool_sprintf() in the source code. What to do?

(removing everyone except the lists from CC, I don't want to go to email
arest because of spamming too many recipients)

What is the stuff in-flight in next that this is targeting?

And why would anything prevent you from putting ethtool_puts() directly
below ethtool_sprintf()?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
