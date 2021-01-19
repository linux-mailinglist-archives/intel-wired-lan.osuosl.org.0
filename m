Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D502FC35B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 23:25:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC13E84ABB;
	Tue, 19 Jan 2021 22:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wxcTo7rWWtor; Tue, 19 Jan 2021 22:25:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4828784D09;
	Tue, 19 Jan 2021 22:25:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C4941BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 78306203B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TC7ezIGLIQK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 22:25:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 59D591FE2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:25:45 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id h11so3097329ioh.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 14:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d7zoJM+uNhdWvf1nHzEcFiYo9BG80GzQR83DQYjnEzw=;
 b=eil52VWTCcNdi++4F2dG/nMwfkcdE91k3nHfVG8GKbOw0SwqzOWfBUgUGRIRTkxIqA
 fLVNu6G3aJ548afzbytVlZPJMTl8wGbJaQ8KfCF+sqVN7opxIcsJ2IGN0sIxUYxSXLIy
 NIONX+zWUh0SOhOSotXhMFMLEcg6L4pLt9U/t11s0JlR/RliRRsBfAJwsetVvrfBoOdP
 f7wazaGsD1pW8VXo7YvMA1kIVPB+aXRZczruu1ftzmlRRJtL3b/mxT7/T2y8AC4taJm9
 x8mN3J8lqrcuYu4fjLE4O2E3WSP+vgbLmas6FN3rT/2a22EBOxz79NtHxJxE1cw9id5q
 JCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d7zoJM+uNhdWvf1nHzEcFiYo9BG80GzQR83DQYjnEzw=;
 b=iovy/WxTouGlI0LA92tutURs8SEwFGr+Npl49zGG3I/CEHXXaNwAwpfj5oTbC6pRXy
 KcwTPsL97nEZyHwi09iVymy7vmLQM5hS8JhmztS2QvqE09CLPL2k9w6D0wjFP/jFU6sk
 k33wglHXJmKn5O3n1Hj6wMdf1vVcDdNMCFmUrDSVZ6Ox0rKya56lIAzNIIYgHESyObtP
 jVLMRtwkdKfhJKlWxhKU3sKlmhPyb90LXwx6/RMYjftmSD83HDB5LCnypxsVCNUp7vN+
 9LkJ7gMIvKoN5EuLkO7NZ6Ppyc1WA+fy9TOR/ChfMdjaiwbM5v4KQ3yiMjrJO8QqjwUG
 yEaA==
X-Gm-Message-State: AOAM531orK2h4mSD7bSw/k+cEIE7nJo68fL61yalV2YKqHMaJ9RVxxaQ
 cM+SGwIKmGRPLi5BK34cEBcBUNc8myRpHiAG44E=
X-Google-Smtp-Source: ABdhPJzSh0zwo7rTqCixtlkjRTXkcsmO4VdPcYvUvCQTW0AwTAj8wdr2YAuGptKyS9szDJCfJiOLjgr5A9AUhS/ecKw=
X-Received: by 2002:a92:b6dd:: with SMTP id m90mr4638493ill.97.1611095144572; 
 Tue, 19 Jan 2021 14:25:44 -0800 (PST)
MIME-Version: 1.0
References: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
 <aa69157e286b0178bf115124f4b2da254e07a291.1610777159.git.lucien.xin@gmail.com>
 <c1a1972ea509a7559a8900e1a33212d09f58f3c9.1610777159.git.lucien.xin@gmail.com>
 <7b4d84fe32d588884fcd75c2f6f84eb8cd052622.1610777159.git.lucien.xin@gmail.com>
 <cover.1610777159.git.lucien.xin@gmail.com>
 <f58d50ef96eb1504f4a952cc75a19d21dcf85827.1610777159.git.lucien.xin@gmail.com>
 <c7cd3ae7df46d579a11c277f9cb258b7955415b2.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <c7cd3ae7df46d579a11c277f9cb258b7955415b2.1610777159.git.lucien.xin@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 19 Jan 2021 14:25:31 -0800
Message-ID: <CAKgT0UdaXj9X47=ggSwTKt2zvG-Wcvtj-GSf9JZWcPaMGy+M2w@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/6] net: ixgbevf: use
 skb_csum_is_sctp instead of protocol check
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, network dev <netdev@vger.kernel.org>,
 "linux-sctp @ vger . kernel . org" <linux-sctp@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 15, 2021 at 10:14 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> Using skb_csum_is_sctp is a easier way to validate it's a SCTP CRC
> checksum offload packet, and yet it also makes ixgbevf support SCTP
> CRC checksum offload for UDP and GRE encapped packets, just as it
> does in igb driver.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
