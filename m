Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1C8AF8E18
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 11:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A320860AE8;
	Fri,  4 Jul 2025 09:17:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9aUPQo0aIaLX; Fri,  4 Jul 2025 09:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07F6560AF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751620656;
	bh=vXvwDn7itTHGGZLWAaah4dYCYgTFq/tKhFwCa5qaWyo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y29bXFPEIG71C8XFP1ui1bveS+torodhhFft9wpkEH25mZiUeTdUZb/td50COpzXm
	 Xa/zk81gwkF0m15T6gyERvzJjZuo25/TlVRny3lEo6t31024OpPn+lW5k/wFyKR+PJ
	 el+rYSoYl8kuTMzpLToWcyeYY85QbmJxJSdWgojCK4iegcEEDc3uzCtnK5n8b7Sjkp
	 HAI8yQjMGtyUvdOOSfeuV65uHXHwi+i3NiGDo8IZk7n+xEgyjN4gEWxpsNy/9aVvEG
	 n52intlA1+ThqvTB67xokZMDuigwV7TY0qeZP0ygV/oREzyO3KN16RHVCde8960BUo
	 unbIK/hH5zOsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07F6560AF5;
	Fri,  4 Jul 2025 09:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 373517AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 09:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3389F41045
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 09:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v_XB2pJZi45k for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 09:17:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DD174104D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DD174104D
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DD174104D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 09:17:30 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3a4fb9c2436so344819f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Jul 2025 02:17:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751620648; x=1752225448;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vXvwDn7itTHGGZLWAaah4dYCYgTFq/tKhFwCa5qaWyo=;
 b=gdDEOnY41v5l4gs3l+k8am7UWX3aZ1FZKLcYpUuiid0wHo6GSfELnrxlFeJI2Tg+eI
 Tmtc4uGTKJIM2GDY6WYnJuZROmA9Gq8fN0rlOvUAwthTZo/Ae82DN/G44EXBXi4OQipW
 ScEQrZHpEG6pMDNyrErSj5PdIxXfogDSb8YkODEGfEdGQXsioJaHSB0lbbvcb8ZEnhZM
 oE14L1tO+oNeILIBlvgDQoS3O9NXG2eh/8jcGVwLSaGEx4d0myPI32HE1tibIp9hdiG/
 f4ic6nAUq02jtsJZ5iBsVJbrH232+veIGKhY1kexQAPtl1nkUuCt7xid2+iqjlp1o/vj
 aSyg==
X-Gm-Message-State: AOJu0YykBUH15stw00oYKZTBIdqXHV+lKkOUNGWFL+fvpOAa6VHqs0eu
 fwihTnSnIpK9AzaiD2JGwexOJx0lGpnVKAI1iXFiZYlj/JPtN2BQtTZoCk5eFZHFPTk=
X-Gm-Gg: ASbGncviN0zp6vFwoTDGnTimSpMLJ04eIjN9vWjYgS3xjzBdpAUJp+T9bmTSHOduMCC
 tzzcvEx7Mzvh6MTREoNMrt3ScSwxBR0WoEFKXZvDMwu9amdlmRJWYRsQKonWSAUgUxaUhnywOM4
 uiqe4oYiy63IWWRFQmQQR35d7CAWIkVAiFU9cMEMmeZ9nZPPIF9sit7Kll/nwa795MQwGS2Jhpk
 A9fdU2yN94SWrbJLZpxWK20p7JoV7LYfHydySYSiaqG9ZYSJRh4DrwjXUyuhbbSsFS2AAqwdyEH
 4NSKyu18vaSRDBRbwc9xh+10wdJVI5M1ck51ownTIDc1kasUqVVh+NP/jQYFUuEvsJwFlg==
X-Google-Smtp-Source: AGHT+IFD4sOgB0QaLEA+zQ5wvucnFk0w/y8zzg8ON1aekW0QpH8D16ZTT07LE/HlxqbKBTMJuFlcrQ==
X-Received: by 2002:a5d:588e:0:b0:3a5:8cc2:a4a1 with SMTP id
 ffacd0b85a97d-3b4964e2afcmr1633764f8f.39.1751620648183; 
 Fri, 04 Jul 2025 02:17:28 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b47030b9desm2014594f8f.19.2025.07.04.02.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jul 2025 02:17:27 -0700 (PDT)
Date: Fri, 4 Jul 2025 11:17:23 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, david.kaplan@amd.com, dhowells@redhat.com, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <my4wiyu5dqlalt45e5pz2dfhjm3ytbnshhhjqlcdetp357z7u6@zvnq7wfcunlv>
References: <20250703113022.1451223-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703113022.1451223-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1751620648; x=1752225448;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vXvwDn7itTHGGZLWAaah4dYCYgTFq/tKhFwCa5qaWyo=;
 b=Yc5dW5IoaYlP1Uaj8ouNYXbLwET1w/tHm1Pw/5mTJoMGVtAcpB4se33d6c0UNnYPMd
 f8XKVYnkdM6sQNUdQa9ISsu+gKjHtAyUqWiWpqvYncNiSm4orngNCY8lOD+3H4TtDCJB
 Fe2ALMJNH6T0iTw6q7JPaZtlNapzU6iKR0JstHNwSZZjksI/XVtQy3M5N508TCk4zDzG
 xV5KOX25f9uRrlPnkG/nOQr4tp+VVDGSyhMoJhdajSy2Ni9AOdey0WyK4q8nr1AHniaz
 Hiw9UpyPQl0IuwakIKy2pxByhHFL75tqKQVNEb3tMrXVC28JDehO20sbOziOwW2c1I7W
 q1lg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Yc5dW5Io
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] devlink: allow driver
 to freely name interfaces
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jul 03, 2025 at 01:30:21PM +0200, jedrzej.jagielski@intel.com wrote:
>Currently when adding devlink port it is prohibited to let
>a driver name an interface on its own. In some scenarios
>it would not be preferable to provide such limitation.
>
>Remove triggering the warning when ndo_get_phys_port_name() is
>implemented for driver which interface is about to get a devlink
>port on.

What's the reason for this? If you are missing some formatting, you
should add it to devlink.

Please don't to this.

>
>Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>---
> net/devlink/port.c | 17 -----------------
> 1 file changed, 17 deletions(-)
>
>diff --git a/net/devlink/port.c b/net/devlink/port.c
>index 939081a0e615..f885c8e73307 100644
>--- a/net/devlink/port.c
>+++ b/net/devlink/port.c
>@@ -1161,23 +1161,6 @@ static void devlink_port_type_netdev_checks(struct devlink_port *devlink_port,
> {
> 	const struct net_device_ops *ops = netdev->netdev_ops;
> 
>-	/* If driver registers devlink port, it should set devlink port
>-	 * attributes accordingly so the compat functions are called
>-	 * and the original ops are not used.
>-	 */
>-	if (ops->ndo_get_phys_port_name) {
>-		/* Some drivers use the same set of ndos for netdevs
>-		 * that have devlink_port registered and also for
>-		 * those who don't. Make sure that ndo_get_phys_port_name
>-		 * returns -EOPNOTSUPP here in case it is defined.
>-		 * Warn if not.
>-		 */
>-		char name[IFNAMSIZ];
>-		int err;
>-
>-		err = ops->ndo_get_phys_port_name(netdev, name, sizeof(name));
>-		WARN_ON(err != -EOPNOTSUPP);
>-	}
> 	if (ops->ndo_get_port_parent_id) {
> 		/* Some drivers use the same set of ndos for netdevs
> 		 * that have devlink_port registered and also for
>-- 
>2.31.1
>
