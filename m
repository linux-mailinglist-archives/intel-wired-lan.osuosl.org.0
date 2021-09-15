Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036E440CD10
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 21:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D252401DF;
	Wed, 15 Sep 2021 19:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3GZuyMwoUR3S; Wed, 15 Sep 2021 19:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE376401BF;
	Wed, 15 Sep 2021 19:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B7C01BF30F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 19:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26A8440665
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 19:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJhmwZFc7l4x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 19:16:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com
 [IPv6:2607:f8b0:4864:20::331])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDD9240205
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 19:16:52 +0000 (UTC)
Received: by mail-ot1-x331.google.com with SMTP id
 x10-20020a056830408a00b004f26cead745so4986391ott.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 12:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gh4bn35Ad0vdVDHCviL3VyTRYieJBj2Evni8i7+DXt8=;
 b=RCtJ/Ww8JUDNqMB8/lBzwfKbEuvyuMvQfVHucjMXFjAQ/enuCZqYlrBNhbdVCr0oKu
 9iFp65oC4NyHtVKs/aCybXOTk4NxoScw/jBy6nsLNNlV9XG+lEtdpOOKQB9uA3yNymCX
 ri0s4ZJi5XGqIVcyKBsKKH9FrgvpI6afMzC71bYyjQ9ZF6bbT33NmlQ5Kft5+JApYC4C
 ju6+IaA8gnJDNMELuoFDSm3f4CGDRO+dRf13dS8Fi3T8EQJCBsHcdtYApR5ydswGeiF4
 kdcASjvWSTMooo/Lc6BnpGW4S6QB+u4/ug4LsP5DVpEHF9+NVv5x/Y+E0qvzdziZqdRb
 fFGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gh4bn35Ad0vdVDHCviL3VyTRYieJBj2Evni8i7+DXt8=;
 b=pdVlmM9xbTfGqfysUnK+Hc4vwIbw+WpQlq04QizVFZsC7Oc6nntSh3sCH4lPZXvuT0
 1IVTvnaX3mlSJ1bXKaQ9KW/iORiI62/Vjh5sTvq8BM68A4UcRVFE7009ruNhennnzVHk
 BMGg7+2KJSKcJw/TfVa1gfrPLoBDnW0SN1bkmCKtfDIun0a2wu0FP366J4vEsuvTNlng
 T3xCIXB3LlkYMDEe7Q0vvn/Z7P1NOWklnXkexUoIAWrA4hv0DubFiHR5kkKoSWMNPvR5
 wZpX3XmL5z72UH1177MAuTmsK+FD6/vwMRR/Gv93CXacw8l9wrnhn/1f24TPx1OldCTx
 Bm4Q==
X-Gm-Message-State: AOAM531ijPHYNn6kxo1baYxYenqMlhmRWjj5nQS6B5sY3a19GjadVhb1
 0jpIdSR5/RBFeabcpBKyz5GJF+6+ALXk6bvaA7A=
X-Google-Smtp-Source: ABdhPJz9bs25IokICEolN5gSBqRcr2YDZADfY9nkr/HTiobh0+i8sLP1f90mgZ/ELxIDPa+3LTzvKopt9MtFjpisbSM=
X-Received: by 2002:a05:6830:2b2c:: with SMTP id
 l44mr1451640otv.238.1631733411803; 
 Wed, 15 Sep 2021 12:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <452ff4ddfef7fc8f558a8c8eb7a8050688760e11.1631609537.git.jbenc@redhat.com>
In-Reply-To: <452ff4ddfef7fc8f558a8c8eb7a8050688760e11.1631609537.git.jbenc@redhat.com>
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Date: Wed, 15 Sep 2021 12:16:40 -0700
Message-ID: <CAEuXFExDWaQwJHHQLcMjbFSP-621KUi16BNg=VH-Y5KLk6dhCA@mail.gmail.com>
To: Jiri Benc <jbenc@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix endless loop under
 rtnl
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
Cc: NetDEV list <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 14, 2021 at 1:55 AM Jiri Benc <jbenc@redhat.com> wrote:
>
> The loop in i40e_get_capabilities can never end. The problem is that
> although i40e_aq_discover_capabilities returns with an error if there's
> a firmware problem, the returned error is not checked. There is a check for
> pf->hw.aq.asq_last_status but that value is set to I40E_AQ_RC_OK on most
> firmware problems.
>
> When i40e_aq_discover_capabilities encounters a firmware problem, it will
> enocunter the same problem on its next invocation. As the result, the loop
> becomes endless. We hit this with I40E_ERR_ADMIN_QUEUE_TIMEOUT but looking
> at the code, it can happen with a range of other firmware errors.
>
> I don't know what the correct behavior should be: whether the firmware
> should be retried a few times, or whether pf->hw.aq.asq_last_status should
> be always set to the encountered firmware error (but then it would be
> pointless and can be just replaced by the i40e_aq_discover_capabilities
> return value). However, the current behavior with an endless loop under the
> rtnl mutex(!) is unacceptable and Intel has not submitted a fix, although we
> explained the bug to them 7 months ago.
>
> This may not be the best possible fix but it's better than hanging the whole
> system on a firmware bug.
>
> Fixes: 56a62fc86895 ("i40e: init code and hardware support")
> Tested-by: Stefan Assmann <sassmann@redhat.com>
> Signed-off-by: Jiri Benc <jbenc@redhat.com>


Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
