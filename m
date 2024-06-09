Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7039015F7
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 13:30:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6B4E40463;
	Sun,  9 Jun 2024 11:29:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DBoruaJHWtPs; Sun,  9 Jun 2024 11:29:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5C8D40467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717932597;
	bh=HJ4zCaTWgNUn48MUERLAvrZ6HAXG3veuSDqVhXI7XfA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WdYX3z+4dNhn8LR20PlOkBE8+0eGQHIA7NVBWDF2TrRxfBv49ILGpwXzJvVMUQ673
	 f/7Vqxkdx8bgk/8IcW5hAb4pXQ9UkFBsryQ27I/RN0aOZcJ+JYb7MuvG90caEFtIqt
	 WusvQ9UZTMG0ZfcVA4ck3hOngWu/CPbMkw1IIT60NUqLVsHEAJ7CgHHwYpPEkkpKlA
	 FjPgEfy8OdjBHRmi5f6iCyIY30Npym/0WLKf95Q0Nqb8tnAOJbZmYeNQixrnHocwe/
	 w7LbIGWs9q4lxvcHjSOCdAHufvXBjkWqFdR4U/FirqBN9uvv1PJYfog1Q76J4RxDHC
	 EiQgSyY8l6TCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5C8D40467;
	Sun,  9 Jun 2024 11:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 391E61BF40B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 11:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 22016406A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 11:29:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mgHkvTCY4iFC for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 11:29:54 +0000 (UTC)
X-Greylist: delayed 328 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 09 Jun 2024 11:29:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6719B406A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6719B406A0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.12;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6719B406A0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 11:29:52 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Melf5-1snxRB3Nsj-00q09r; Sun, 09
 Jun 2024 13:23:40 +0200
Message-ID: <4aa34452-4e13-4dc2-a67f-5bd821fd0498@web.de>
Date: Sun, 9 Jun 2024 13:23:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Richard chien <richard.chien@hpe.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20240609085735.6253-1-richard.chien@hpe.com>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240609085735.6253-1-richard.chien@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:2VFpPJBph9XiC5vhNiOmte11nZIZgjfOHt+kTXyb73NicWJP8kq
 TmMkwWvE8pGeQ8GU5ABYb0vEeNgUL8EwlpiO+3pSgkgRaPGHYtxpunzeHJK6+vcr46mX0Cx
 mnigvjhS9psZBvdkn4b28pmP2/U4S6ffcKwoCNK3vddo5oppRjskgueF1C8//ToVkWk8y/I
 bVo6IL6MhZSBu9erevrxw==
UI-OutboundReport: notjunk:1;M01:P0:midifB2vnNM=;Dmb8oEUNA4XJy651maFYakczIuB
 nU5ANJ+/WyDpsl+AsbrZiSrIsCTiPbSP0q2YbPi9apJhazNiL595sS29an+CSjMxHnjPtKexv
 hW4JHwfCT5KhA0wKftvuS7rKZaG+rW5rYM1H4NHHo8EEN5s2KjFccFlofGVB8D/Mm/IDAnIir
 dX7FbpQnzin7HTxf9GaeT5Ns49ebpjYSWWdlRxsJZHF8j0syQJJWC7prF8oIMmUTttE1OY3vv
 /H62dpuDYxUHFqSt+E98TwcQrQL9BPFjQWBqN2XaiMemQmVFHFyBZnTciIRZ+x/hyEBSFLxYF
 y075+HSR4ZMGr/dgNkUxXcpjHxW4GUZdBIcGAJsk4bMcdfGg1nu4cw0abTszBOax+P6XMtEAy
 SA6g0xKYwkc0JDiFT29lcI3kTH4upUIPJQ9JbGmdZOniSIn+EcTNO1s35wKeb9RcOehw3uNk1
 07J2IpZedZgX4ULGOtMLCcM38HuYKvpRi8CnJYyeZ5rkppo5qh+oqqjstTOB9B7nx8PELD/lu
 6aIXTucOt5S9OrXYqy/FNiKVKkBBldctVs2eqgJQrNDPlGtJaavxntOppv1Lpn3HgoUikoIcM
 AX9LQiet7IboGxJWvBGauXq1j4eujLt9qlXwXYb5ft3QVm+IWw3PO9Q3YiHILVq47HEv1EG97
 eNdhv0mtL8+3PL42IJNIIuL8kHzJp+/D2dQIWUexO966jV6b4KC54IyR10EyOlnA+tmThEyFQ
 hefzezPYIT30Wm27Wd3RTb0QK/jVZRUcTLbw6UQVaMWQ9Z3Cl/PyeJeHHzIfLu0aVO9B1w0Mk
 P6ZUw4NFo4xwHeQAL3jMOwc5ryxrFK+3UG5ZApngZWGqQ=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1717932590; x=1718537390; i=markus.elfring@web.de;
 bh=HJ4zCaTWgNUn48MUERLAvrZ6HAXG3veuSDqVhXI7XfA=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=HqARrcKbuPm7p2YrGHUrGLTz4PK+lxClT1lFutg1QkXlBeE2fHj8TS1r94pu3fba
 0VQxvMGrtetOMu224cI6yfZhePVZWdQ/6XbHaleEJYW+siwAH8mXVIU5p7CPO2SZ6
 mV0OPIb1o5jwY4wbZybSmHIR9k7LglYtGI2x9h3m5eZ/VgrrlR32BDeWe+SUzVnnd
 tmNrayrClGY3dPsuqs04fryoe9pU4tkLOCFWA47Z7fA21/i1Rx3Zliishga8izVY3
 OUNEJEtM3dwEn91JnMbpLUUCJqb9JaSVUeOIHQMQ44+ByjM/drxjZnsKeBZwMRTgc
 mYSXQcq30aJGkrU4iw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=HqARrcKb
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add support for firmware update
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Richard chien <m8809301@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> This patch adds support for firmware update to the in-tree ixgbe driver =
and it is actually a port
> from the out-of-tree ixgbe driver. In-band firmware update is one of the=
 essential system maintenance
=E2=80=A6

Please improve such a change description also according to word wrapping
because of more desirable text line lengths.


=E2=80=A6
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -993,114 +993,292 @@ static void ixgbe_get_regs(struct net_device *ne=
tdev,
=E2=80=A6
> +static int ixgbe_set_eeprom(struct net_device *netdev,
> +                            struct ethtool_eeprom *eeprom, u8 *bytes)
=E2=80=A6
>  err:
> -	kfree(eeprom_buff);
> -	return ret_val;
> +        kfree(eeprom_buff);
> +        return ret_val;
>  }

Please keep these statements unmodified.

Would you like to reconsider the indentation once more for your change app=
roach?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Do=
cumentation/process/coding-style.rst?h=3Dv6.10-rc2#n18

Regards,
Markus
