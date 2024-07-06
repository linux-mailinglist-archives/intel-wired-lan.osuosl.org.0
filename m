Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E79692943D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  6 Jul 2024 16:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91CE2403EA;
	Sat,  6 Jul 2024 14:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iqftTCT_8TGe; Sat,  6 Jul 2024 14:55:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82416404ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720277733;
	bh=Z75ZznpIbvuXtNcDLfumWj2gSi9XkiI5AnYv1mRIAA4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tO6RluEd/v190w+6vjqIlVwEuKXYjToASPBrLvt9hToKpJHZOtG2DS1mfTjICZBtU
	 Dh9qEx64zAvlLtX9qy+YT8DzsEKPZBHmNjDDVYXP1yAA6P7pHaJwSFgWUXHGOkZewl
	 ssJBvE86fUVcUWNLLZ6WHX0VqpBAlOLHXbKVsK9RuIbck13jAK2G0D+4IG0N4MYEH2
	 KO8UuxaWk3/aXMD63hlZg+6VYxYsp6xQ39qxewdTBSjeVrVV5MgolCrZSsxKfI/SEg
	 a/fOAtA4VaoypGSvkY7ZVglSXsM6IcHddyzgHTjMuJquoRnVfmetnnERtIlqzaaitK
	 lLttfu5BqADmw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82416404ED;
	Sat,  6 Jul 2024 14:55:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA7131BF83E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 14:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 944184022F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 14:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XegmeMk3H02o for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Jul 2024 14:55:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.12;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3E03E4016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E03E4016B
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E03E4016B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Jul 2024 14:55:28 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.91.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MmQcl-1rzbbT1Tc1-00g8Oh; Sat, 06
 Jul 2024 16:48:46 +0200
Message-ID: <63e3f609-69fe-4cfd-8418-eec00705cf32@web.de>
Date: Sat, 6 Jul 2024 16:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Mishin <amishin@t-argos.ru>, netdev@vger.kernel.org,
 lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
References: <20240706140518.9214-1-amishin@t-argos.ru>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240706140518.9214-1-amishin@t-argos.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:sf3LwDMEQp+t08dgcYNRjXtXbVPpC4vwx8LVmzPbHJrnE+iFDn1
 4zBskLf0c2bv3hSGuVVp/cwnjPm1gZ4EDBLQNnEOOauQpbklTf9Fm+i8fYEC05xgIJJRBjM
 weu/5k4C2Y35ffpivJcka07YRt81ilXzy6RDQbBlep5YT/pqduVOGPBkiVniEQrenTRzxoF
 0OA7Egdtz+o1Mf6jAlaDQ==
UI-OutboundReport: notjunk:1;M01:P0:sUi+n2Zgm+s=;SF1Q7F4xAk93SDGLSZ7urYHPpI1
 jHrz6enhT2Vopzya6bJhFZsh4fW9DmZeq2JPYXNaQsTygGijiWmMGfIB1zYwWMV5Isqds+C4e
 m+CRUgpUewWEBl2wYvHkpOcuOspPff8/vUvqB8Zq/d7UxQ1Kg4kCbCi3UUY+sHSzxTzIT457+
 OnF+4bpWW9+21cBYir0cM8VUp5X7MvN52DqKfIjb2epNeWeQx03bjHysnH4pMGKnHmYK9jSV2
 6SirL//mXhkBhb9PWvkHz2i+B4bFKiDfcYe3M0/Ziz23TuhqaVU8odffKyaI7kuK1a29o3RpS
 JYmjACgpWmo5TXaKpcsIDEg3z7JBvZI4LO2ezcCtcpJBJSG1SqF7GF9DuGZLgGr/t2jope1xG
 ILExi20jHMb6DkE7k35vJSlSWr2jLSXtEnimvlSXkRtXuOGOMyLGFUutAV8iWvrBHa1aa7aWj
 cllaRCsi74UDItHjzU+uIFAZiEG/kKFMwfR5ODCr3YrWTXwDfcHPnQ5SY/d+tWVuBSdT540kD
 Fs/kJrwCWNTiuK26XHxswsIA8RwoP6uhqtyZW8W8oJgOEBTROnogcvmkwN6I1TOxu0r+qUAZT
 resS7wtpb++In+UaJsEq9qicZJ4GgBnwn5NElgmmNTQ0iDoCA/a3E+SBjztm5el9sSfsjjwhT
 ISck38XLgccA3VPXTF3rkD2NWlzG7+4l9B3eZwLg4XeejPPblBi6Xat9NgAHbdYqqDwOhQNy+
 v8+Wc+DAHto9OOmyu+VW/7o8ojnqSgNOdT3YejFk73udhFo1ET436qhRIJXBkEksT9Cg754hb
 WBi6cwoIpXphAGdOdDZLldaZ3kRhkO7G1EihauvIB0dcc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1720277727; x=1720882527; i=markus.elfring@web.de;
 bh=Z75ZznpIbvuXtNcDLfumWj2gSi9XkiI5AnYv1mRIAA4=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=JVE/2lHTwmEKmy/+l1gi2Fcu3BBGGVt3ZBOOVVHlFw7js4t5vAcU2U+w1qanaL1v
 6th59RJtpMqiT1VIUvIfhmSbYVBKl3IDv1MRVcceEeNUVX7fVz1dFmTpdmK9enDuj
 Km9TModgvXDiEolWhPdQ7kl3pbqP9jWHX8EGLMIt4kXVFug4QWOAXomC6qJYBFctv
 6wuqa5Y+R0R/VoFUfjV9O2EKVL7TiF4zbIv1/P4lPyZYRMGJuULcVaDrO8EFXeow+
 vcrIRF4uDggD5M9MehNcG4ILwAYQa+msw46zl90n31oRVl27f6CV9s5/JHTlSn9hC
 iFc9nlDcDte4O4rZeQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=JVE/2lHT
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Adjust over
 allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()
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
Cc: LKML <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

=E2=80=A6
> 'ice_sched_node' structure. But in this calls there are 'sizeof(*root)'

                              But there are calls for?


> So memory is allocated for structures instead pointers. This lead to
=E2=80=A6

                                                of?            leads?

Regards,
Markus
