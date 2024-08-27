Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD02960368
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 09:40:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D98ED607E9;
	Tue, 27 Aug 2024 07:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34UB-TRwAZ2d; Tue, 27 Aug 2024 07:40:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EDF5606E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724744439;
	bh=pljMeg/tZIYLgASZ7cHtr7dCWNo79/sFWaht/42VsCs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FJ9pk7hECIeHbSnaZ+59SRi/o9oPfw8pI7IDT26JzT9jMzH4tOsAsBHCksh4NpKOd
	 03NlBryfO7I8U6sVvsRhBIi1H67BJXUfWJuFbhC9JK5SJBdQE6zuydFJU8Icdp45MO
	 nZQWTV3WX40s/hhNgFoJHi2jMa/SbKjqCO/gYdLnvHqYwdAwQa50G40GYL23xl18n0
	 7HDmB1N52lqQ4N40Wl4/EBVD8BrhpROxNNieKG2008Y60/G9FYAiSRgVGXoyzVVDRZ
	 SdbUIa5cN7e9xP1jnYaerjdjc5W32uwF0ogE2Yhyh7MSEjtjgV9TGuNEpNdD3eqLxt
	 00EFwe4vfVVCA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EDF5606E7;
	Tue, 27 Aug 2024 07:40:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71BCF1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BF6260624
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:40:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rzoi82Kg584j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 07:40:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5CF4B605A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CF4B605A5
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CF4B605A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:40:26 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-a86abbd68ffso595323066b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 00:40:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724744424; x=1725349224;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pljMeg/tZIYLgASZ7cHtr7dCWNo79/sFWaht/42VsCs=;
 b=JrNNS+51T56GwKCuKG/DAeYa6Rh+zz6SuK73fFXk/WP7YupJk0DhC0ldDTK8mm0DOg
 J4b+yv3mwInzkaK+cUScBiRM6AcNqbNFcj97gJyraaqWcksSpJ9OC8SeBWyyPbeTx9ji
 489/diRtBwOvcP3PXUjKLdaJnSpy291QFT6f2mYMw0Y3qA3ult3rjcZU0nPB5pjaid4a
 +ruGV5CmLTsGBphNNxcKL6NDo+h1Qfy8RCjCjoHIsudYGf+0qjKatmMS3FicvKqb/iL5
 1YW3971oo9ekzuKF/IhDRS9ileYfbObrHJdhKrZQljnbyFKQe2TRkFiSUT17sOrTYM3T
 7YVw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQ78nLcXLYZuhAgj9nBbCXwxoGUWoQRrjdBdVLfJX9cBLvDBleL3JDzbr2LVfJzmojqr7TVod7+vDflT2rw68=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw3ipVGRRqu9FMFMzDRvZwUE4tW8k4a5Hv7r4zpgZ7O167cA6Ve
 BNZtgXduIcVqt1Wmr7OoivXZgt/GixLLmWPspSd13xkUQk8zkH81+z+ZlQLhnmo=
X-Google-Smtp-Source: AGHT+IFV3VSINboGZ5Er0ne8BDV200ac18VnmBZ7QML+x8/y19gkiMEZo0P87rh59ZwRG9YzJqUzDQ==
X-Received: by 2002:a17:907:2d8e:b0:a7a:c7f3:580d with SMTP id
 a640c23a62f3a-a86e29feb8bmr192161466b.25.1724744424121; 
 Tue, 27 Aug 2024 00:40:24 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a86e5485671sm74803666b.30.2024.08.27.00.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2024 00:40:23 -0700 (PDT)
Date: Tue, 27 Aug 2024 09:40:22 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Thomas Bogendoerfer <tbogendoerfer@suse.de>
Message-ID: <Zs2C5nlDKlgxd32a@nanopsycho.orion>
References: <20240827071602.66954-1-tbogendoerfer@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240827071602.66954-1-tbogendoerfer@suse.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1724744424; x=1725349224;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pljMeg/tZIYLgASZ7cHtr7dCWNo79/sFWaht/42VsCs=;
 b=FULDTOx+0KSoe6unpbx3PN19yENxIVTPi/lli5A5hvp0zDXgcI6BPYxG3gdJg4ra2P
 sJHX6E2V1hJnNemQZeoXfB5CUqt1a4z3CFeLM5PeIAf60MEkIm8/sUZG2rzuWLDk5eui
 3zqVfFfiseMQIi4fN8hBX7pL/LwxH1THcdPRcx1+kqbsIgIbnSi8ZPq7fQjiEp2wNesy
 WpszDaf09FjmD3Vy/ZehkAx6/IcZ+ehjE8cNthm4WG6h1/p9Q8zqlckV/BubFuJHuaWJ
 u1wBkUbHaxRud0nhgvwFrm4q6bPxkHltyQwqqYp8Bk/ty3HB7xEXnFqZWihB/n0zzCVN
 axWQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=FULDTOx+
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Daniel Machon <daniel.machon@microchip.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Aug 27, 2024 at 09:16:02AM CEST, tbogendoerfer@suse.de wrote:
>For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
>allocated. So before accessing pf->lag a NULL pointer check is needed.
>
>Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
>Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
