Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 426853BA799
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Jul 2021 08:46:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 511E542430;
	Sat,  3 Jul 2021 06:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N3WRGAapE8oI; Sat,  3 Jul 2021 06:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3311D423F7;
	Sat,  3 Jul 2021 06:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59AD31BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jul 2021 06:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45AAB423F7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jul 2021 06:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0QfoQDXZGI1 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Jul 2021 06:46:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74722423ED
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Jul 2021 06:46:38 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id s13so3939453plg.12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 23:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lpOTqypZyxtIpHFRzx4qIPmrE1PnUqrG1SNhRQLuIOs=;
 b=NXO1PppLTgIRN/vXBnF9ON/SGdrjRVgvxOzMvl2gXa3cGJKF4ieiJ2ATtkGI6/Wetd
 x2wtRqb9mBiB/UG8DCKr9ejg4EjN/HauH3w5PWXO7meiQEkzTa4ZxKzGagdtb9HunVDF
 Kbd6Eu8Ch6kmnFtXtKu2FJ6S6ocSiNHhpKmRp3HjnJlO2f6JgSIvaKPS/nyXHBEsY271
 6CoPU1t6U+rwVJZCYjpF9Z0oKXfLUkt4hz9t7DwttTtIbC02ZqVTylAxJoY5b5lOrDsE
 XmwWLXYHT75XqzOMg0YZb21AzvII9hVKdLHA1njsF/gJzTLFIX/zuTVEPTVbnmPaRq0J
 8THQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lpOTqypZyxtIpHFRzx4qIPmrE1PnUqrG1SNhRQLuIOs=;
 b=BW+yGMdg0mW33f7T2I8a5lSNzyyGKdfJoLZ1eNs/+dO7uXiAZGIrU3roEToR2N0syQ
 PD2JEmE+Y9lICBLR6Cca01PDEQDlGSHqI/b271U7eFm/uNjvgW1CJoM9x2yw7zl80vqF
 hzNjKtGyuavZngWWHODg94G8ymAEVMKS5SPXnndSaSfjks41hR5vUaOXelR240rvOu9K
 O0CHzjzOt70/lWoKzq34jLz6ikaynRgthVhO4WuBOax/xzQm/cJLCCYrXsPNcoZab/aY
 U4s5e6P+cU5mMNaHe9UgARtwTnN6+2jr+aqpfO+0lvpakxgUTD3j6qEwkjc8cKfi4Gjb
 6SwQ==
X-Gm-Message-State: AOAM531O9XrPR6BwN3Qw9QhNQdXIpAoCA5qdCx64s/BLkJfqi460qwQV
 48ZUU1vztOja2Y7hbfyjfBS2wrt4b832sw==
X-Google-Smtp-Source: ABdhPJzvq7xn4q8Tjty232pOch0TdcjZ+0SGc5vlLRCkdG716EDHjVjS2DXjK0YL1OkgcH5ZMO9frg==
X-Received: by 2002:a17:90a:4417:: with SMTP id
 s23mr3324624pjg.228.1625294797568; 
 Fri, 02 Jul 2021 23:46:37 -0700 (PDT)
Received: from [172.30.1.44] ([211.250.74.184])
 by smtp.gmail.com with ESMTPSA id 18sm14348043pje.22.2021.07.02.23.46.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Jul 2021 23:46:37 -0700 (PDT)
To: Jay Vosburgh <jay.vosburgh@canonical.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
 <20210702142648.7677-7-ap420073@gmail.com> <14516.1625261184@famine>
From: Taehee Yoo <ap420073@gmail.com>
Message-ID: <f6f99418-fc81-6ddb-2a44-1b3d02179730@gmail.com>
Date: Sat, 3 Jul 2021 15:46:33 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <14516.1625261184@famine>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net 6/8] bonding: disallow setting
 nested bonding + ipsec offload
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
Cc: netdev@vger.kernel.org, vfalico@gmail.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, andy@greyhouse.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/3/21 6:26 AM, Jay Vosburgh wrote:
 > Taehee Yoo <ap420073@gmail.com> wrote:
 >
 > [...]
 >> @@ -479,8 +481,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff 
*skb, struct xfrm_state *xs)
 >> 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
 >> 		return true;
 >
 > 	Not a question about this patch, but isn't the "return true"
 > above incorrect (i.e., should return false)?  I understand that the
 > ipsec offload is only available for active-backup mode, but the test
 > above will return true for all modes other than active-backup.
 >

I really agree with you.
I tried to test it but I couldn't because my NIC isn't working TX side 
ipsec offload(ixgbevf).
(dev->ndo_dev_offload_okf() is called in only tx side.)
So, I didn't include that change.

Thanks a lot,
Taehee

 > 	-J
 >
 >> -	if (!(slave_dev->xfrmdev_ops
 >> -	      && slave_dev->xfrmdev_ops->xdo_dev_offload_ok)) {
 >> +	if (!slave_dev->xfrmdev_ops ||
 >> +	    !slave_dev->xfrmdev_ops->xdo_dev_offload_ok ||
 >> +	    netif_is_bond_master(slave_dev)) {
 >> 		slave_warn(bond_dev, slave_dev, "%s: no slave 
xdo_dev_offload_ok\n", __func__);
 >> 		return false;
 >> 	}
 >> --
 >> 2.17.1
 >>
 >
 > ---
 > 	-Jay Vosburgh, jay.vosburgh@canonical.com
 >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
