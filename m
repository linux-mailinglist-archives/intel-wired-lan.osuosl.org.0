Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 867552E6A05
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Dec 2020 19:34:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 84F4D203F6;
	Mon, 28 Dec 2020 18:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S1aprQFxwxdy; Mon, 28 Dec 2020 18:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83A7C22DDB;
	Mon, 28 Dec 2020 18:34:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 523921BF397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 18:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 468CB20412
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 18:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MaQfkTEhWl1T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Dec 2020 18:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 30FF6203F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 18:34:11 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id z5so10114577iob.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 10:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W2VBIjwTI9YnWAgN/Gh/eIQ26Mt5o2ALjLPZ5apGXhA=;
 b=mkcsFzY3B58ZrnEsxzGvHjV3MHYe586qe0bGyBt71RyDDrVxSmIIWGG9W7x5c4yFZL
 Pp10pJ7RLzyFyFrzLDhUI7MSUHy9bL8DSIHeYXAfvdqMLjws5Au8S5a2w/zLdTTh1qF2
 B6Ghg9DW24V0D6Najx56IB4p4HET4W1kd14kdrskiJ/otqZDBZsuoJ9y666PWGmubMPO
 NHfFWJl5tMFauRix6Epj/8hiTTRQ75jjGQJ2ssAYNISLOx7/NmnA7SK+41U20pttL7rK
 b5qzKSya7WQr+CPkqWOUJFQ0J/sqmzL4HGE/vcXYgNo22Zyr2ODadiDervQwel6mSEgq
 NGAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W2VBIjwTI9YnWAgN/Gh/eIQ26Mt5o2ALjLPZ5apGXhA=;
 b=Z7Vp4gKYw71nuRsGeG8iJNwNjvHsHWSjK038Lpnd+dExvza7ApoXzSn+9vqr1tLfoR
 0OaZaTjcg2t23L0uFxs9Ebc6ly6ZJDxnJLjvu9fduyqeKDWa6pvaMGGH2O333quUJ47G
 Y5Iq3xVK6Cnwwz+F5TNU8IN0wJ1w2UrXT521ml8nEp3hU0tkxwNr1g+QE/2sSLfTqFh7
 Pyktrilt7Rf7b9TQilODlP3eF/VHCngeP55qohbFYPDuJ/MqrdjpxxDBrfFPkysJELm2
 v9CTYIR8H35xOPa3hECK0PL4zllNkWjLkk946+O5cudHUhitXUEuJKz8bTQyeNnw7Fu/
 iqHg==
X-Gm-Message-State: AOAM532SiKGVKJ57l1+sUKX2xn/BdI2EWUUf1t2sdr7gKYJY4QJPiM8d
 UlefiEt2B9+b2s49+VbAbnsTKpUFw3TWCFxn7Wc=
X-Google-Smtp-Source: ABdhPJyt7cxo5aZy3B7MHuppquqeX2CKZwNPPEz6oYWwcMq279Fzs/rwUJZV8Vfhj/h+CtQnmJlxHNQhjir/lFOz0SU=
X-Received: by 2002:a05:6602:152:: with SMTP id
 v18mr37522077iot.187.1609180450303; 
 Mon, 28 Dec 2020 10:34:10 -0800 (PST)
MIME-Version: 1.0
References: <20201228103633.11621-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201228103633.11621-1-mateusz.palczewski@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 28 Dec 2020 10:33:59 -0800
Message-ID: <CAKgT0Uf-Exy1qhZYhKTe=mWf6i8L-FcaUYT0zGnyVWDq-pnfqw@mail.gmail.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS
 structures
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
Cc: Norbert Ciosek <norbertx.ciosek@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 28, 2020 at 2:36 AM Mateusz Palczewski
<mateusz.palczewski@intel.com> wrote:
>
> From: Norbert Ciosek <norbertx.ciosek@intel.com>
>
> Move "key" and "lut" fields at the end of RSS structures.
> They are arrays of size 1 used to fill in the data
> in dynamically allocated memory located after both structures.
> Previous layout could lead to unwanted compiler optimizations
> in loops when iterating over these arrays.
>
> Fixes: 65ece6de0114 ("virtchnl: Add missing explicit padding to structures")
> Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
> index ac4a1d3..44945d6 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -529,8 +529,8 @@ struct virtchnl_eth_stats {
>  struct virtchnl_rss_key {
>         u16 vsi_id;
>         u16 key_len;
> -       u8 key[1];         /* RSS hash key, packed bytes */
>         u8 pad[1];
> +       u8 key[1];         /* RSS hash key, packed bytes */
>  };
>
>  VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
> @@ -538,8 +538,8 @@ VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
>  struct virtchnl_rss_lut {
>         u16 vsi_id;
>         u16 lut_entries;
> -       u8 lut[1];        /* RSS lookup table */
>         u8 pad[1];
> +       u8 lut[1];        /* RSS lookup table */
>  };
>
>  VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);

This makes absolutely no sense. Isn't it going to break compatibility
with existing devices that already have the old definitions? If the
key and lut are meant to be dynamically allocated it doesn't make
sense to have it size 1. Defining them with a length of 1 is incorrect
for how these are handled in the kernel. It just looks wrong as my
first instinct was to ask about why you would define an array of size
1? You should be defining the key and lut without size, so "key[]" and
"lut[]". That is how we define dynamically allocated fields at the end
of structure.

If the lut and key are supposed to be dynamically allocated you
shouldn't have the pad at all. You should remove it from the
structures in question.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
