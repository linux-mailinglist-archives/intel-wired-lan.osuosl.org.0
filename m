Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D82CA7845AA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 17:34:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B4A860E30;
	Tue, 22 Aug 2023 15:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B4A860E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692718493;
	bh=fVunbh8GYRfdKQikVExS80haxcuGy5l6t6rNKI4bZ1k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gx8XdxXc8uwF/kJk6ClXhFOH+MW9TQJpV7CuNBlg0lZGDQ+fR6EAp9LMG0sxEXTbz
	 iPUnsroU7uCtEK7sPqIoa7ZX9UbqTzWbTr4E5iBxJLZ3KYOB+jyZ7ELjK+6Gm6O2J4
	 M4x3/cm0MDLjyFRy4wPi0T+dRHgg/rdZSB+tQdEE6/mwr49uZ/jkCxuiyI1t/gsyLS
	 zi+hoFEHIVYKuX/IsTS36XeyvnIRNMBDgrNWsBoOXrpkkbDyHeLB4tcqaAlWZxAFIl
	 NdDsJV4t/fftpsDzyUROZ1UvcPRyuGk4JjYYB0+aRVevXKyAXXS3cCRPO9UkwHzDs8
	 hqu0HqgYn2dJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-hxWX4Ip634; Tue, 22 Aug 2023 15:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A04360A7F;
	Tue, 22 Aug 2023 15:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A04360A7F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8046A1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 554BB4012F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:34:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 554BB4012F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92QNvspSjUhJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 15:34:46 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEB994014D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 15:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEB994014D
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-319559fd67dso4283362f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 08:34:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692718483; x=1693323283;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o+t39ZxccY2KvDqYDKzXBn289VzYrnhxPeif5Up0+bQ=;
 b=CHSEtk5HyByFt9MfydsXx0SI3l95Wl/xabG1PTlytw4pbVtbkgEQaGH9zrIdqQDdbx
 qT2Kgv+fz5aGjU9pHUe/zE0iP7uDrbVmedEBepffmH5FGsw5o8XLlS6a3xXAGA9t5saZ
 No8UyeXNCdBzNLbAFWJUD+KZadEcuA8sbG/9mTF+SqHMNrcsvmPeTQBJm8WXbyr34fcW
 3h3nicMU+7pf5ANEBETVdTegsSiNAE52sZrv1SvqOPs3LuM06OF8j9b7KGyTP5Yh7MWM
 /hfjhLGASgsg3YVTCOQyYRd670xtVL0AP3/hqDVXw9sDgveXZAm0JD8wnmftTxyVQLyP
 iddA==
X-Gm-Message-State: AOJu0Ywl1/HtvVt6/nMqXoct8e2PbeWE4nZWAaeDeTdaBoVX4tucECyP
 6q3EXqkPQ7KichAa6RMIXu0PEQ==
X-Google-Smtp-Source: AGHT+IHNeLRVZyqs7W0FAvg5z/ZzXvJ5Dflhj2qKRLv7dQpDk4rbcoF0uJ9SE2V8xDcsnoVzBJuRpQ==
X-Received: by 2002:adf:e742:0:b0:318:69:ab03 with SMTP id
 c2-20020adfe742000000b003180069ab03mr7790238wrn.17.1692718483193; 
 Tue, 22 Aug 2023 08:34:43 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 a8-20020a5d4d48000000b0031c5b380291sm5675352wru.110.2023.08.22.08.34.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Aug 2023 08:34:42 -0700 (PDT)
Date: Tue, 22 Aug 2023 17:34:41 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZOTVkXWCLY88YfjV@nanopsycho>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho> <20230822081255.7a36fa4d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230822081255.7a36fa4d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1692718483; x=1693323283; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=o+t39ZxccY2KvDqYDKzXBn289VzYrnhxPeif5Up0+bQ=;
 b=IFpgOZmFVhuM9rpYc/OBH2ePylYFR2/w+C5TcBBsolPDhnorvz5HDmODZWqj9q6cSA
 wMc18hwMArXY5jIGnjFPqLKBBSzhY/eHO1/t5p15TXJ84LH/VyS0UtimUYW//K2klMXD
 z0teXUR66uZtcmcRcCzuJ53xy7Rj56A1JIOLXNHL8+/ioDoAGc+GHWnXoGtu/2j9SZ86
 ziL1Vm9HPc7fk6VPFsDZ8hoZwWm3ELDtu41AZNg5Fir8k77ZJJyJRg1VfqpvwC5JizlG
 1sJ/gDSXs1xmRs00prAfcNp2O84lORAvM79FawBgz+c6stFjYLNIv9bC0NReI/FRjV0L
 gbIA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=IFpgOZmF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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

Tue, Aug 22, 2023 at 05:12:55PM CEST, kuba@kernel.org wrote:
>On Tue, 22 Aug 2023 08:12:28 +0200 Jiri Pirko wrote:
>> NACK! Port function is there to configure the VF/SF from the eswitch
>> side. Yet you use it for the configureation of the actual VF, which is
>> clear misuse. Please don't
>
>Stating where they are supposed to configure the rate would be helpful.

TC?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
