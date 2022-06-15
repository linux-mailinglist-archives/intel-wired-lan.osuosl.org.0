Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C144A54CDB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jun 2022 18:01:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5985E60D90;
	Wed, 15 Jun 2022 16:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B96wjzUWlF9j; Wed, 15 Jun 2022 16:01:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7616F607CA;
	Wed, 15 Jun 2022 16:01:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7033A1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 16:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5DFD4823E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 16:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Z5Cw9utPu4O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jun 2022 16:01:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EA7681BC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 16:01:51 +0000 (UTC)
Received: from mail-yw1-f174.google.com ([209.85.128.174]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MnpwC-1nLMG02XLm-00pHv6 for <intel-wired-lan@lists.osuosl.org>; Wed, 15
 Jun 2022 17:56:42 +0200
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-316287dc2d2so33893857b3.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jun 2022 08:56:42 -0700 (PDT)
X-Gm-Message-State: AJIora+6tFs6H84GiR//CH2HLMmAY5D/vbXCxE1uI3wifvpg+TPkuMBZ
 RpiymMqcMh9lplY2wleEIry+Jckqlw5DtOfSo9I=
X-Google-Smtp-Source: AGRyM1ssQ7EkBm0qhH6uDU4lXFFKkY053t2zRQKkm7NkkX1tRS8R0U8rR1KSzLg2YqYKcIWowFkLquLpJFSuHzvzLzY=
X-Received: by 2002:a81:6ac5:0:b0:317:5299:523d with SMTP id
 f188-20020a816ac5000000b003175299523dmr334950ywc.249.1655308601292; Wed, 15
 Jun 2022 08:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <202206091828.eNkyL2EI-lkp@intel.com>
 <CAK8P3a3Mu0MDRJU=he=gVxGKQYwzr1wePLKdgN37yLPSqm1iuQ@mail.gmail.com>
 <20220615085128.026f1c56@kernel.org>
In-Reply-To: <20220615085128.026f1c56@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 15 Jun 2022 17:56:24 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1s-jKfDFo7CXjpM4B6JJS-bV901yCfOxr9qikV7AO_LQ@mail.gmail.com>
Message-ID: <CAK8P3a1s-jKfDFo7CXjpM4B6JJS-bV901yCfOxr9qikV7AO_LQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Provags-ID: V03:K1:uCyy4pTrmi6tSNlyfOQaQEW7D8RBR7i8kkIJpk4uLxFRGFKrMza
 LTkaSXiJAZOjs8PvpO622GhUZ2k+zqD+5yyK7FrhqmlhDsZwEauyLaM47gjD5zqeCOCHtSL
 ew74iXtHQJQy4j/o3+eRhfqkD31y15SKKmnR7ENEQLtHaBHYEL2adEKeXegIdBXGnYGLQU9
 IP/yWniqT/PMyJcqmxsMA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yy/Wy7ye270=:0vcBAasRGc4S688Vp9HWwH
 Q58KgsAmwtvV7rkoyZJlrHq/nXjt4o38AtZBOCu36aVXQZa50ny1/TEXlQSCS0fKu3CkV55lv
 fzLCfFjyCCPYwZXID5wyxvs7W6ImUdKEIzBkpQpQuDiGK3pSONvM15Txv4jsJk0VHjoxEp9YU
 J9Q5HMfgHrjroQgFZpmqYQ5oUgc7OgTNZ3cMKpuJWC7G4RFifBIdG0WpxXBvBeJQKLTd37yUl
 tM575y5AnlSISsr+vzvqM7N0Y/n0YbRfjUYtoIxosMnrV/yyMgMnNAzZkWXoS5xDsNkJHMuRi
 4HvbqHT24jLlTJvQ43WL9FrrAWhoV1vMxoYd+jtKI3UOD1aJ3QYlfePCNY0LKOlbsEqy4ExSH
 ViBAlrWzGtNzONWgrmDKniJA/tOi7Vh4mkXfBNRTvyC72qhcGTx3/12jhExI9jZpPvuT6/QBP
 daEkRT6Aw5daXAqKjLjTv/b/tSMTdG0+dM7Vx+upVXU++WXH4qDZ2siF++O59lBM+557ELW6+
 GkzHBoedVI+OlRLBqkSpGpEbNB5gLOMcjeAEt2kvnF7Ydp6d2O10nzjWlB+lU8pc1JjqV/EyP
 wdznXJGzN6extsRxOnSAYxtGO18kKCuAvo00A3oIaR24Ha/dyqu10YzC7gcH47FdU3cOAA+EG
 B+joZkYO8T4NuwUE7OnP6MdCYDbjeFWGV5M6TeigXFhN2fiXUcliJATCF/E+AU3V7cAseL6hu
 Cek0Gut1oI7rvQt6raHl5prqslOcnQRPmlpaCHGsCPOQfiFiQRPWkRwPo8HLVmWpFd2pROEJF
 0fZLCGzBHK4za2LfOc8P5ztFM4J6qzewlnicgkYZuLmt7uV+5SpWhTIhm38RyvEscYQ7o8szM
 dR/tclD4E6HgTDl39tlXyF6kG3GieSziFz8ugC9e4=
Subject: Re: [Intel-wired-lan]
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:1174:29: error:
 enumerator value for
 'i40e_static_assert_i40e_aqc_cloud_filters_element_data' is not an integer
 constant
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
Cc: kbuild-all@lists.01.org, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Eric Dumazet <edumazet@google.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 15, 2022 at 5:51 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed, 15 Jun 2022 16:11:17 +0200 Arnd Bergmann wrote:
> > The bug is that 'i40e_aqc_cloud_filters_element_data' and some other
> > structures in the
> > same file are broken when building an ARM kernel without CONFIG_AEABI, which has
> > unusual struct packing rules and triggers the static assertion.
>
> What are those packing rules, out of curiosity?

On the old OABI, each struct member is on a 32-bit boundary.

       Arnd
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
