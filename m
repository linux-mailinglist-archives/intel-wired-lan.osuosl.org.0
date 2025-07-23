Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33EB0E986
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 06:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC66380C7E;
	Wed, 23 Jul 2025 04:17:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mE7l7tBM8ySP; Wed, 23 Jul 2025 04:17:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F368280C7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753244224;
	bh=C8oFT6sPKOg8VRT9sf+f9nquc2yr6H2/i1A3wu9QYuo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vo4cIvCHThyO5EQH/abTh3b36uu6v4uqtRPmPBBShHU44VgmDUYdvyYmIiX6ACURl
	 rlIZZm9DEw5c7+txsCFYhjZPXaVpdBnjWOt2ExmfW+x+VeRUhSGyo1mh/OheJ2J3Ve
	 mVrgLN77tO1vn8h950jJmboPzn7CswTCgHmfv5a/iSocQX5K5jMXFBXp3eLAqKnWN8
	 Ji43vcvO9K0IoW9XyQ/i+s9gPsM8+QZvrzWJeZgrpYMW0VWzUEEm+UEt7MysitfzSg
	 jU9iij5a5bit8pJ4p0JyLIb+W7au7Fb/8mCNgZDN9tny5RHrEEaJetVEhbjfyefeSa
	 p5Zq7cUfOUMww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F368280C7F;
	Wed, 23 Jul 2025 04:17:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 533A8E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4466580C6F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:17:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlWlI_Zo-9vq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 04:17:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132; helo=mail-il1-x132.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5DC5680C7A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DC5680C7A
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DC5680C7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 04:17:01 +0000 (UTC)
Received: by mail-il1-x132.google.com with SMTP id
 e9e14a558f8ab-3e28bf4a350so32749965ab.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 21:17:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753244220; x=1753849020;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=C8oFT6sPKOg8VRT9sf+f9nquc2yr6H2/i1A3wu9QYuo=;
 b=jZpduh6LmY092r77z6E/hyxAWMslN8K1sj9dljBEZEjQhh0etKIzrjZuog9EsEBr3v
 DFfDWq6AFiLzANO6L0L8GmWY0DCXegkfnHbEnORfEXdmLoDQQdFX6lvH/tgcUnMEqI1J
 ZbC/EOvTz0TFryqKgl6a8e1NN42/Zy7M0LE97k2D8m/toGCmmANZ7ijScPSehbw1G1TY
 WjGNL7xI4vC3Co15xs32WKuDgtbe3Xt0sYVj0mUNy/DuSIwa8Ik084wJ18qI1HuGYHEA
 /9W8s1vOs3eekVBOYRRLRTnQvqeVZP4xRO6EAviw8q1wsuNNUyvhyx7Ry8GKEhZX0anz
 mQbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+GnX19Cpr7Z9NOsnE/PCVyggrJX1eogDq1fJw75Pf2Of7U0ejTCUVQl4xU1DytQ3M44chOR9pyP5xuzmOkWU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwlYdm8uujGEKsYWIgjMgGTEfQxPPVPw1rnX2i4JmFd6cPf7P+s
 yNyf2X7oBZWVq8YyylQeWJzL/bLWNpOLxNn1WggwxlYQS82MXratNlavVDhLwgk/0URzESEu4s7
 74XHv+W2rV8ug42FRmjvH/CANA0Ym9UY=
X-Gm-Gg: ASbGnct547cEHhsTjHlc76YR49I8AHcG5PoG5+ZEgu5e+6bavMaE+kwpxRsn1lKYQuc
 +Bmqr8vHt6Txx5KQPd7rCp9ame+1OOB05bjgQuYBrWjpadObuulFLGV7pqq0unzBzldIjzwZ2EU
 c4PerCYcSBG0kMdJD1LO3+77TjjZtTcuYkY5+LTGiBaHDPpfZwG6yKdPdqg0jU2oTkM4vn6vLqh
 crVt9g=
X-Google-Smtp-Source: AGHT+IHvfG4gDNwxiFwAV4bkIuvs3peWQ+Qchh4FuAeT25UrF8Y7hoMYUkFqbB0L8ENMUaL069TQE5i6aezBop5KoF4=
X-Received: by 2002:a05:6e02:3604:b0:3e2:a749:250b with SMTP id
 e9e14a558f8ab-3e32fc9ac94mr29841885ab.14.1753244220095; Tue, 22 Jul 2025
 21:17:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250722135057.85386-2-kerneljasonxing@gmail.com>
 <202507231150.Gbhu52dL-lkp@intel.com>
In-Reply-To: <202507231150.Gbhu52dL-lkp@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 23 Jul 2025 12:16:23 +0800
X-Gm-Features: Ac12FXxDJjAyfkHJ_DUda-RuAy-76P36wJK7-IwcJ40FektM2wOf1EwR8GjRFSQ
Message-ID: <CAL+tcoBj6sqKzHzmLte2uvrD4JWB=QC3U8OM0NpX2oJAyw7UmQ@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
 oe-kbuild-all@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753244220; x=1753849020; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C8oFT6sPKOg8VRT9sf+f9nquc2yr6H2/i1A3wu9QYuo=;
 b=TY9KrBG7iKjd9nfvY6nay90PUWPzqGW/bNwlujExreftS40uWAiQiEkKhr0w0Op7Bj
 Mm5O+KrF0t53ieR/YB5Xs7As5fmnTPPzTaBd70Fpstv7NwQhlFML2mFFhAIQs6kJFgec
 xGTLyeCHqUvqeV4EwRcBQA9A/KpfPO3pJg+DpNSWk5vKm5+E5FEWpJc84U8KSopNQa1w
 aY3FN9z3IBzgjx3nPOvUTjJw4diz6QhVTF3wHbBkVvkcuj0miDD47s+Y6Ktx4AaKV9gs
 Uqqjx9rxci7WjkGmg80quX/r2Knz+ubWTD90aTB2IUCLUz/9iVigy7QiEOfiH1U+DB5e
 MNhw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TY9KrBG7
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] stmmac: xsk: fix underflow
 of budget in zerocopy mode
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

On Wed, Jul 23, 2025 at 12:10=E2=80=AFPM kernel test robot <lkp@intel.com> =
wrote:
>
> Hi Jason,
>
> kernel test robot noticed the following build errors:
>
> [auto build test ERROR on net/main]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Jason-Xing/stmmac-=
xsk-fix-underflow-of-budget-in-zerocopy-mode/20250722-215348
> base:   net/main
> patch link:    https://lore.kernel.org/r/20250722135057.85386-2-kerneljas=
onxing%40gmail.com
> patch subject: [Intel-wired-lan] [PATCH net v2 1/2] stmmac: xsk: fix unde=
rflow of budget in zerocopy mode
> config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20250=
723/202507231150.Gbhu52dL-lkp@intel.com/config)
> compiler: alpha-linux-gcc (GCC) 15.1.0
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archi=
ve/20250723/202507231150.Gbhu52dL-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202507231150.Gbhu52dL-lkp=
@intel.com/

Oops, I posted a wrong version which missed one '{' after the 'for' stateme=
nt.

Will post a correct version.

Thanks,
Jason
