Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E519C9E263
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Dec 2025 09:09:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00C8D412A5;
	Wed,  3 Dec 2025 08:09:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B2ijF3WqLxwD; Wed,  3 Dec 2025 08:09:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2729C412A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764749386;
	bh=Qw1XIM7eSAhRoQYgDKc3vj7KReSh96uVF11Fo0SrVk8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4XR0C8mlSCznUebGed3wDaNO4sEjn9qQKv2ICA5XqZRFfhfDzPFskaJFWIGi4NXT+
	 Jm7IUagtIkwWTLQmGdUouRloVJy8zNfFlDK01/zdXEkn9ekqlYsf9b2WNwME7Xf6l7
	 LJyvnkioJKtd00cP4gLdrCR8JnlnxOGoLLRIYXCXHIv8MAdJyi5VIcsvpQZM7rWB+y
	 tb7vYPRBiYsH3cFHylwmqjJOewc5x0KqGmXH0KWyw5DhNoY7ej+WxdVSxBrDzjZ7OK
	 phEov/VneGgLNQTmVw5CF09XYiObmUTXqQNY+R3EHCL7FAwhAFbE19HBvDI/NwiI7a
	 wcvw2h/0NInsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2729C412A9;
	Wed,  3 Dec 2025 08:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 08E25E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 08:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC4F2613BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 08:09:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eDYjmctmg-kQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Dec 2025 08:09:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2DB3360DBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DB3360DBD
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DB3360DBD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Dec 2025 08:09:43 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-298039e00c2so90030525ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Dec 2025 00:09:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764749383; x=1765354183;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Qw1XIM7eSAhRoQYgDKc3vj7KReSh96uVF11Fo0SrVk8=;
 b=ZDWGHTjAuHeU3bXHNDqKE5LRkW8i8af5CPqoDOD2a3vE8ZPMEuuwWbqUzCDAitzXFd
 KQspHAKch6HZXAGBG+ura2hdpRLuq7pyJcVg0ZvXlASqVJyXIPmOR333070gjX8X5dvb
 yheVOHTrT8dwBiVur4AU3LWYa4tVC562MrwDRp5eWFSIuOBzx35TwAHqYjJTOAcLAPn5
 hbaTH66EKFVrU3yTMEIbtWCJfOFIitTUTeZiEv7dsA6BfLAQjIJ7FxjyKD/ikhc9oPEI
 ux57+6Sta5hpMvnZICZ9LO6KiCeui74pWjqD0B33J2XQO7T3jnEI+tBSWytvoafjXB46
 ZuZg==
X-Gm-Message-State: AOJu0Yxqw6kVjxG3u+QzfKshYgAAAHanZe66+rcZvLYlh43/jUGzoBtl
 4wA7snTIsUze/94gkWZeDiEL3Iua/sgPDbM0LoyRr9ca4FGLuJwlBvGV
X-Gm-Gg: ASbGncslRWQmRWigCaBsq/HeylzFr4v56yvEClDt5+UBr4ZWHxA4UyZGjewQgSvJlgs
 1WLYMiS34jtCdfc9N4/X26f+pzGPaEXa3j4+NYw8iBkDbbsOw9B/s3faGdxmZkGkRfZiLVSnlnD
 6/H5JSh9qFooSnoVVQ6Vz1IloCtcNIQDriI9KnzvuLaZka+9TAuaLrmK4aqkiwvXMK3IT712f6E
 EoKxipBxgFcCO8Q98JebZ39jZ2HUYuiW7i2mvgNjUa44B5ROQA0oWzofvP09ihaS9IQwAANTgbp
 Watcf9uNQKEFoabc17UAU/ykhd13FBMC4vil25oeeebol3jK0/OP9do1JRE9zVO1bNiOjxP84Mg
 nh46+mqoSzgUCnydgPKMSW/loUofnVUSvgBlxQuNcS2/2wTTcqwWrUpSOFuDfc/utsMk15NC8rk
 7aSjMbGg/gCvNe
X-Google-Smtp-Source: AGHT+IFAlfUiSP/0APry1y+m8EN2DB6nA1GfpdSjA37sLcnI7XG/xYfVBKXtv81HhltCS2vstIvzZA==
X-Received: by 2002:a17:903:3807:b0:290:9332:eebd with SMTP id
 d9443c01a7336-29d6833d1b8mr19425575ad.10.1764749383315; 
 Wed, 03 Dec 2025 00:09:43 -0800 (PST)
Received: from [192.168.1.4] ([106.215.171.188])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29bce441ae7sm175527585ad.25.2025.12.03.00.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Dec 2025 00:09:42 -0800 (PST)
Message-ID: <f34adbc99606c1f9157112123b7039d2a5bb589e.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel	
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>,  Paolo Abeni <pabeni@redhat.com>, Alexander
 Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>, Dan
 Carpenter	 <dan.carpenter@linaro.org>
Date: Wed, 03 Dec 2025 13:39:31 +0530
In-Reply-To: <eaf30e67-ce1a-47ce-8207-b973ea260bf5@intel.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
 <ec570c6f8c041f60f1de0b002e61e5a2971633c5.camel@gmail.com>
 <eaf30e67-ce1a-47ce-8207-b973ea260bf5@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764749383; x=1765354183; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Qw1XIM7eSAhRoQYgDKc3vj7KReSh96uVF11Fo0SrVk8=;
 b=Xyw2rTpstMnUVUZARiWUsBog2glfVoaS4valJT9G43l0uik0IijAjJeW4DgfOIle08
 xtvqsU80paydNm0cW2AGZ38E56uR693EcgkK5X1jvaEBdmkAq27yxiiPFsxb887B88LF
 8BrSP0GKqiJ2HETmeaC/YJMW42HXwclUxrzy5jtnjemFGFF39dznR15zP5yxvnoWy07D
 vLtf2LJfiSzkFeX+tpcAJPzpC+gPQ/j50zqNeTdeVOfcuUr6WbZZDXogM6dyjlxYJxxX
 6Bu5ZCllMBT8kHyYIjAI48SouHN47Go3ExQop1XcSr1XVysJybI1jYjux5Jx9iszoiJ5
 kEMw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Xyw2rTps
Subject: Re: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet:
 intel: fix freeing uninitialized pointers with __free
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

On Tue, 2025-12-02 at 10:17 -0800, Tony Nguyen wrote:
>=20
> On 12/2/2025 11:47 AM, ally heev wrote:
> > On Mon, 2025-12-01 at 13:40 -0800, Tony Nguyen wrote:
> > >=20
> > > On 11/23/2025 11:40 PM, Ally Heev wrote:
> > > > Uninitialized pointers with `__free` attribute can cause undefined
> > > > behavior as the memory assigned randomly to the pointer is freed
> > > > automatically when the pointer goes out of scope.
> > > >=20
> > > > We could just fix it by initializing the pointer to NULL, but, as u=
sage of
> > > > cleanup attributes is discouraged in net [1], trying to achieve cle=
anup
> > > > using goto
> > >=20
> > > These two drivers already have multiple other usages of this. All the
> > > other instances initialize to NULL; I'd prefer to see this do the sam=
e
> > > over changing this single instance.
> > >=20
> >=20
> > Other usages are slightly complicated to be refactored and might need
> > good testing. Do you want me to do it in a different series?
>=20
> Hi Ally,
>=20
> Sorry, I think I was unclear. I'd prefer these two initialized to NULL,=
=20
> to match the other usages, over removing the __free() from them.

I had a patch for that already, but, isn't using __free discouraged in
networking drivers [1]? Simon was against it [2]

[2] https://lore.kernel.org/all/aQ9xp9pchMwml30P@horms.kernel.org/
[1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-man=
aged-and-cleanup-h-constructs

Regards,
Ally

