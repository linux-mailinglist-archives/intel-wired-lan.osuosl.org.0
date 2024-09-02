Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F3F9688C4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 15:25:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E9E26072E;
	Mon,  2 Sep 2024 13:25:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eqIFgsbfjlLN; Mon,  2 Sep 2024 13:25:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1E0D60732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725283535;
	bh=Lhmw8DK619Nkd2cv1zfs8NJsXag2lKL4MraeEqFuerk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ly+DKRzR1KUhTgo0wo80bC8wWFwDjk2ec+edsQpF0vzPPW6xPJ+v1UkXTjBUH8d07
	 e0RGm2PLqtfM87a9e9svX8i0oOOb6m8y3OolJh7820RFyyLMwT3dGJGWnh0xvNwaHE
	 DSbK/naNK0+hmvtILKV89oO5/SXm7Y9sdGWOHBwcBywUF8djW7TT4DBC/vYqNNj0F7
	 sasaTcWdAeXe3qz9emK5YnHm8LhPeH8nlBtWZtvXFeorbPh7pxHTjhDIAu2FGE86s7
	 tcmeLBo8chhmR4AkULXeKJRNiGmQico1f4r0veDmSMztQxm1L+9kMnv84+SQggfA4Q
	 TX4A3jYpt87iQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1E0D60732;
	Mon,  2 Sep 2024 13:25:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92A1C1BF414
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 13:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DEB240347
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 13:25:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9f4sdQrRWQNg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 13:25:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 73B66402AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73B66402AA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73B66402AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 13:25:31 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-544-qx4JFRzWM86DQuc6wk_tNA-1; Mon, 02 Sep 2024 09:25:29 -0400
X-MC-Unique: qx4JFRzWM86DQuc6wk_tNA-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bb9872a9aso5642755e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Sep 2024 06:25:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725283528; x=1725888328;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Lhmw8DK619Nkd2cv1zfs8NJsXag2lKL4MraeEqFuerk=;
 b=kejeMXAsIe2SLq4tqKi1Qz5TZ6mC0iTbUn+J0gNQbA+EmXnPaFaZquDom7ELzsz9Ok
 qckOEgRXyzKEFgJmsWWHCOr5cgRdM3aw9ulZMqirAcqgtO+HEe++hqcIFV5c/byxU/3e
 5Nt53Ft+jQY8AFAurXI6EgNpmG9NAhMqGjwuH9iWhVIPMlljw8X3uDVxn7uw5CfNwIoy
 /f0smVhB2XtfvsqzzM14PZVOz8Qrbr3QX/6T0Rq/W4atb+vX9bgh+xE3ZIagUVSsErqI
 dPp1QCK6Ja4rnuWNfy940ZPUalvoeQjzpMprt9yoP0CsoORq/iaA9fgNsxdiiWigC6u5
 805w==
X-Gm-Message-State: AOJu0YyyeISU+F/YQLncMtQXNqKeUp5MmDiC6gbavKk/p4X+rQZ/bNom
 rtwEvbsGulISs3lbgYZFFVKlw/UOADmSaswhNDlVDoTuEb7wrtxpF3UP1S5O0N99qjFXTSmki6W
 DccyKWbHMP4I4/gzVAeBuV0sK7Mykpvqz929BcdIZ4h6YajWd7uMJA2jzNB2/4iHXvutMielsFh
 0DX9rOE8RARDaTnxQZ0xi80vqgV43rgAgIPRMgaze13Q==
X-Received: by 2002:a05:6000:2a5:b0:367:95e3:e4c6 with SMTP id
 ffacd0b85a97d-374a9541175mr3843640f8f.1.1725283528001; 
 Mon, 02 Sep 2024 06:25:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcwt9z1hM5LKZE1059M+WfheW7sFlDI6gI8FPXsYTvXdwJxkqMvOPLYKsZhrarZ+63IZRvwEoplSZHo0iDyk8=
X-Received: by 2002:a05:6000:2a5:b0:367:95e3:e4c6 with SMTP id
 ffacd0b85a97d-374a9541175mr3843611f8f.1.1725283527068; Mon, 02 Sep 2024
 06:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 2 Sep 2024 15:25:15 +0200
Message-ID: <CADEbmW17Sa6BGpUF0FAVW2Hwq-mKQ0b-2a+L8cS9aRm9=SqUYA@mail.gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725283530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lhmw8DK619Nkd2cv1zfs8NJsXag2lKL4MraeEqFuerk=;
 b=hQHWEYSjtahlEelvhiFZi1x+GpezfdkNRow4BBdCuS4TehCLzEI51mgFQk31fOrL40x6fP
 gXsoBVS5m0Mk5NNdIZ31WD6h/Q9T6aRQJpzCgyS2crIV1aHfecC5mibABz3jOHMjt4LbJ+
 yukMyXOi47svdeZal+0ginvz2K9ChU4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hQHWEYSj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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
Cc: anthony.l.nguyen@intel.com, Jan Sokolowski <jan.sokolowski@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Padraig J Connolly <padraig.j.connolly@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 30, 2024 at 9:28=E2=80=AFPM Aleksandr Loktionov
<aleksandr.loktionov@intel.com> wrote:
>
> In cases when vf sends malformed packets that are classified as
> malicious, sometimes it causes tx queue to freeze. This frozen queue can =
be
> stuck for several minutes being unusable. When mdd event occurs, there is=
 a
> posibility to perform a graceful vf reset to quickly bring vf back to
> operational state.
>
> Currently vf iqueues are being disabled if mdd event occurs.
> Add the ability to reset vf if tx or rx mdd occurs.
> Add mdd events logging throttling /* avoid dmesg polution */.
> Unify tx rx mdd messages formats.
>
> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Thanks, we need this. ice has the same ability.
Just one question about the patch:

[...]
>  static void i40e_handle_mdd_event(struct i40e_pf *pf)
>  {
>         struct i40e_hw *hw =3D &pf->hw;
>         bool mdd_detected =3D false;
>         struct i40e_vf *vf;
>         u32 reg;
>         int i;
>
> -       if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
> +       if (!test_and_clear_bit(__I40E_MDD_EVENT_PENDING, pf->state)) {

OK, using test_and_clear_bit is good, but ...:

[...]
>
>         /* re-enable mdd interrupt cause */
>         clear_bit(__I40E_MDD_EVENT_PENDING, pf->state);

Here the bit is cleared again. Why?

>         reg =3D rd32(hw, I40E_PFINT_ICR0_ENA);
>         reg |=3D  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
>         wr32(hw, I40E_PFINT_ICR0_ENA, reg);
>         i40e_flush(hw);
> +
> +       i40e_print_vfs_mdd_events(pf);
>  }

Michal

