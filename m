Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEA38527AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 04:18:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD58E40ACA;
	Tue, 13 Feb 2024 03:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFkTG2lNRGIZ; Tue, 13 Feb 2024 03:18:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ACD440A85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707794292;
	bh=buWiuQLtEG0HusXViotHeqASAJmkJh5K8Fj/0Hr7F7E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lrJJOAAaYoUc8srYdQRcwNnjUaJJPNdnuBdyAkyxGrzmgxsQAnlj062GZBe/3FYUJ
	 ICld1Qprk4GOc42gqNt7aw/bXHxQ+xlXlaw1JEsJ4hp4Mu19+hiQmFkJk7X1+srRLU
	 XQIWUqTN51yspLVBVGXPtpCzp7/VqcZFzoAFuffq/+AYcgX7D82G53H77xNDRodJJg
	 mYRhZWBag41Lyxu9KuefLoG1LudkKdKxUvCMbDgJkuVbDxcGFvgDBBJdR1xeWRudQS
	 gKA6Uv3Sq49tkxpBc/rdINmB+4fqhjJ8nIcUEfKLD1+1wSXktgUqjj07q1pY3r22fp
	 eU6TMI+8cdztA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0ACD440A85;
	Tue, 13 Feb 2024 03:18:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97A811BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8261F40A9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DTX6m5_CQ8Qe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 03:18:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::332; helo=mail-ot1-x332.google.com;
 envelope-from=jmaxwell37@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9B6C240A85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B6C240A85
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B6C240A85
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:18:08 +0000 (UTC)
Received: by mail-ot1-x332.google.com with SMTP id
 46e09a7af769-6ddca59e336so2156012a34.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 19:18:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707794287; x=1708399087;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=buWiuQLtEG0HusXViotHeqASAJmkJh5K8Fj/0Hr7F7E=;
 b=EVe719Gw6oQxnRyuxol0JQVGQAUL2l/rtk88PnUWL7m10cQ986oWhn47jnFv/KIu0i
 H0YGoV7LN2emQHSeCiTvmFrHgosde8bnqKZj5K6kT8jnFtgobV6AuLszQFlwe5uqz0s8
 lKbOHpYPK/bl7lj17GzfThZ9Z3DhjRYlk104XYsl4rVjA34T8ZLdZiQGzidWg34L1L7s
 W0dP/WIRO5rpez3JGe+eLGxlJzOz50Zil+cYtBgUwPmxT06fqyRAZhfGG0j7mZvbGXM5
 QBG0dGLfVTRZwsENGfNUY4CyvKuZg+EVp5/HLduyxKV3BYANzL5dK33NweXDtyXx+9yZ
 sOAA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEdviTO8CBXU2i2hxi/uF76MNFsK9/sAS6RpE6kMbmbzSPZKxPMqIX2fpfWAIbhWeIRuDNBcqfsN6bSfH2L9Oh7VIs4oyDa/LJsrCUYF2rqw==
X-Gm-Message-State: AOJu0YzpbXq8SEk+QDqzj/NN2izh/gU/acwTndxHHcuBBLcQhGnHG2gb
 g2hyo1n7A+hiPY61bUKIG+8jsmdjo4a+5ob+r4FmX4gNtcJh2nPJ2uvDTxHYuYZMre+PLhdqhB7
 y+ZQyq/xWY2XGuqmLVWm9FevupnI=
X-Google-Smtp-Source: AGHT+IFsDCKIZ/Mghgl62IGADaTeYUyjJq1JBce3qr399uzR/EZBz9gmmVRMmPf+GgDbZZVP5nRV6vGMfv3k+Qg7pYA=
X-Received: by 2002:a9d:6185:0:b0:6e2:e35b:549a with SMTP id
 g5-20020a9d6185000000b006e2e35b549amr516005otk.8.1707794287613; Mon, 12 Feb
 2024 19:18:07 -0800 (PST)
MIME-Version: 1.0
References: <20240208221802.131087-1-jmaxwell37@gmail.com>
 <135d4123-29f5-46dd-b06e-d5a66bd7f598@lunn.ch>
In-Reply-To: <135d4123-29f5-46dd-b06e-d5a66bd7f598@lunn.ch>
From: Jonathan Maxwell <jmaxwell37@gmail.com>
Date: Tue, 13 Feb 2024 14:17:31 +1100
Message-ID: <CAGHK07BT5z+iEGMG+vdBAi24B5UwE7nTh1ZfrbM5u092jEPAJg@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707794287; x=1708399087; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=buWiuQLtEG0HusXViotHeqASAJmkJh5K8Fj/0Hr7F7E=;
 b=Ry61zJViIWrbqmP2bFvz4b6M+nZvOcsWS5LsUnI84UsAWnupuCtLojmcDKpaJbVZIO
 57BX590ou68QVtu94xI58svkaVjqW6Bng+5bDzXBWBo3zMELOq6PO1w0hZv/HM8abe/4
 mxgBQXRqZX4u/vTMPz0xN1Gqr0shLLhlGCgfzAzAuNunuwrD1Y5k24RW9dVv18VHaoIG
 9egAFv+tJ/lYzI+g1m5Yr1ARy6nt1yA+QFP8RUGRct1sUXe3JK6FVHuY2ZIr0245bgG0
 MvU5e4Fd+NGiw5hM640iS+QoN3crpGDYcrLOf8EIfn0zatFimEkGycnL+VU4ARtXXWQW
 glAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ry61zJVi
Subject: Re: [Intel-wired-lan] [net-next v2] intel: make module parameters
 readable in sys filesystem
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Feb 10, 2024 at 4:19=E2=80=AFAM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, Feb 09, 2024 at 09:18:02AM +1100, Jon Maxwell wrote:
> > v2: Remove the "debug" module parameter as per Andrew Lunns suggestion.
> >     It's not really needed as ethtool msglvl can control that.
>
> It is normal to places comments like the above under the ---. In its
> current place, it will be part of the commit message. Under the --- it
> gets dropped when the patch is applied.
>

Thanks Andrew I will resubmit tomorrow with that change.

>     Andrew
>
> ---
> pw-bot: cr
