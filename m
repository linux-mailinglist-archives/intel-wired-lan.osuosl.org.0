Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF29C8869FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 11:10:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC4F060F53;
	Fri, 22 Mar 2024 10:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXCelxSW3pJ4; Fri, 22 Mar 2024 10:10:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C112060F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711102249;
	bh=YITSdSNKjtGWKQJCqVlDxMIGXLNZSJ1FOmf8VqHMVLI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wNa3ZJXw/KHgBVpOmTXjdh1h6jr+xmAjFLfa2pS2S8rdN4gmrccByJ7VvWnKP9Gku
	 qnymkPzKoyePXwAdvyLapEkRiFUS5efq2HR5hrAwYXuwIvSf+KS/27+Vw+kVwHQDft
	 Mj6FCzZm2ktxFTAVYyW2BnLH/17neIgUyzsOYdbx4bRhHDqi+hXbk5IWdXvMRzohiG
	 Spi6p2jJfsXK5FRRhayQgNDQZr+hhhUhKsen5bB+Xa0pHZvlPal5MSYMDVzabmkOXd
	 FBWMh68dvfRstXqShwEiG2x/wqBOyy3s3xHxB1eXqv8CDaaBYhe2/SnCo9OC8TSGXH
	 e4Z6tv98bLWRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C112060F69;
	Fri, 22 Mar 2024 10:10:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CFEB51BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 10:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7FBF4173F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 10:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M7UGAQ6p_Me3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 10:10:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.4;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2871C41714
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2871C41714
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2871C41714
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 10:10:45 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1Mfc4q-1r7vNl0NY0-00jbRy; Fri, 22
 Mar 2024 11:10:13 +0100
Message-ID: <9b09c797-2b01-40d8-9e83-ecb6e25ee78a@web.de>
Date: Fri, 22 Mar 2024 11:10:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Dan Carpenter <dan.carpenter@linaro.org>,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
 <0d7062e1-995b-42bc-8a62-d57c8cb588ee@web.de>
 <7ca4a907-2a9c-4711-a13c-22cbfec15e0e@moroto.mountain>
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <7ca4a907-2a9c-4711-a13c-22cbfec15e0e@moroto.mountain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:OPtKNGD3xEcd1Z7sJW7cRkjajBmWMTdxQ7djE0xUhQ1czhFk4yH
 OVOh6h+sux0OGb4dFA5OaxAiv2F5OWxkUlsDdTB4f5Pvtz2WBLmL0CV0DgoYjprq1yAbO5G
 b1/blJMXPlAmdOtqF6VrJzL01o8nYCkjLkbKyX1X5vVNYHTjvXF9uZyFXaI1Skgc3NRMsNq
 SWWI3YTNfkGNTd1Y5yQHw==
UI-OutboundReport: notjunk:1;M01:P0:c+jyw2VsJiI=;8X85FuXjE2v92Y1LdKpkqdAY/P6
 3CE0tTyk0QhVhk+3EjgNzLGJSS96RUjJ4/GlaRGrkq5/+UOsi0mQMTR7sH/6b2aAVdnqOOb9j
 kwUxvThoag1VWuoBkLjL6OwcvroiR951CJfISFFCGs8qjscK2DYHsfLN0ftUSRYmGvcZAsB3l
 bnmro/wncvRPZw9tDTfeFoRM2g1AhiueTZdai9r9U/hTNfK3X2VCIu42iPztVGQUK7P1iooXi
 jueUVSW9x4GQRY3q8q/r5PdbP2Z8PtmUpKtwxJU5YFVo5r6VvV+qHHJC35D1rPvNtEZ0w4A2Z
 UPOaTxt59CQAOPlW4ckazcxPppn2gF2E9j9u246YUIhDqL7RgsH6i4JQ1YfLkZSAhIMoz47Ys
 xJUXn2/fFE/jQ3nMY9ihfB7OAO1D8hYDfznnjS1qj+VIiE28Rw2cxAlIcPRRSuY9pAcH1YiA7
 OdGbc4PXNchdA6l8PnYn4kJ1FipnheEnrtEK7MhbbduVJYzMyX+HF6TZqXP/GddKqAiqo0rpc
 7G8ai98hz8tTxVnQhgqwXPf/2W5KINj7iq/Nn3tINn3treD736Uo3+2kfxD8EZ2E5wtk2nuLV
 ayjta2L77ptdWXj2ZDFqjruspxL6DhbLfRxfK/FHaPT5f79XGXQwGMjZ15Oq2pXoomrs1HEHq
 c89LsFarA+wiwp8il3ixVCKsf/O+f5NpGy8P1HNROIb4rvU+1pI2EgquU0MTsCNNPi9/K6T5j
 pVfbyNIljWqAks/2m7SmpIaSAWfNm5hxIZUCl6dgZLFhQtQAcs5ukmhAILGYmmchHlHlhCYOG
 jCAjJEIjZNA1gUNdHMEEyFMI6meW/yw37uXAz4mJNI8r8=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711102213; x=1711707013; i=markus.elfring@web.de;
 bh=YITSdSNKjtGWKQJCqVlDxMIGXLNZSJ1FOmf8VqHMVLI=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
 In-Reply-To;
 b=KIe2HiIwGCTEnuoHI6DJ/aJNPwkJAIp0XrQGT4Qf8wsKq/A2ILoV0ksM6w+PONQ4
 7p30gtrDr1zmJU1xXmFumhmDYMiYZ8XcTd5A4BV6XUyQGc9tKdYyxNigHG6YM7++P
 DwCL9L01Fw4zVfi4TN6k3TWT+vuMVN6+rPQRKPNeZ8jfGF0YVHRlYLdSf494yNHYE
 6V6JUTK+yRjrCsrAOfjMZGda3C/MbiVULJCq/Vi/wJOEkCma0ZggEppHrwide2iKx
 DQVOrGCK5ST0U6tXlyVA39dJNrco1dLBxI2ZU72cn23ZuY+tX23xI43GxowvHTywb
 dI+4JxPCj7Vwq19mcg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=KIe2HiIw
Subject: Re: [Intel-wired-lan] [v2] ice: Fix freeing uninitialized pointers
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Markus please don't do this.  Don't take a controversial opinion and
> start trying to force it on everyone via review comments and an
> automatic converstion script.

I dare also to point additional change possibilities out.
I hope that further collateral evolution will become better supported.

Regards,
Markus
