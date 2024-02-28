Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7386B523
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:38:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B60E060E88;
	Wed, 28 Feb 2024 16:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VU6O8lnlGXkN; Wed, 28 Feb 2024 16:38:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BB70605D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709138335;
	bh=jTwj7YTldw7xXwxIUCBnkzOCQU6UVFcauswdy14IwOs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pea+NxS3FWMKFTYvlihvJzp91yWbeoYajpIqwgP6DS/Q3S+ub1O+9VVpQymRf9jSQ
	 c9xGzIYM/3u5Ac0tJMRKAad/35ZfiXx70qEHCCUn1NG0C9QfNkMMEwwCO+9BwLfZK8
	 dDqzqdbDyOxaRYOPaa2KCwySQ0k9IrwBJAaxRWFib0ZPl+75D2kS0ElzeoYUL4ghfr
	 KZuvuaKqLXklS8EfH/by4OziVnicup6w5puUT5bksx842o6+9uzfA6ijY7gL/1l7AF
	 tUobv/ccazKl30MCxGc5uUuxw0iIR6rKm+6Wb+8cTAUVqqeu3etGKwgcyDHnafiK8I
	 DpPfJdsAiU2/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BB70605D9;
	Wed, 28 Feb 2024 16:38:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36C171BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 30EA98225C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyolowcfT03B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:38:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1133; helo=mail-yw1-x1133.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1936C82214
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1936C82214
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1936C82214
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:38:51 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-608ed07bdc5so38586007b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:38:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709138331; x=1709743131;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jTwj7YTldw7xXwxIUCBnkzOCQU6UVFcauswdy14IwOs=;
 b=scVSXL91FUH+fUQfs9359Id7nByoZXY2dZ6hnyk8PgM0j7Nh6ErwYrbjdg0opG5Gp6
 8nnsb5OLKGZakvHefZrF2A8gVuuCtOZrk89hsrYlvHQtOTxQynk34zCMNaAOKhEmWxdX
 CTpz3xY0KmYTUxA6ltd1ovzXov9vsXRhpwD5rbRVbHRhCq9u77izlaJX/tC6KaFzhv+A
 5aavHUA2L0JJu1/8WY1FJVHX8XMsRTWdZoUn6eVbGL9HyrRDBAvxW/PkLPBao6fvbnI/
 fg0iHPxxFInuh3ylGq0nt29MwHqZo5hiIqxkqPMt5txZ3CiltU4DdQHg5uKdrOAM29tr
 zzRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVdHiJ6whDjnsTqBs4NPj9M7GFawCZIRlCBd7TNkF51IG6EOC2pu1+DKS9nJnlVJoF4KUckFF9/nGzdZqFzMvf3CGHcgZKUjXSotwRqVeWoA==
X-Gm-Message-State: AOJu0YxTJ9kyWODD9WZKLUXLh9hKmM8lxy9OIjEthItYC6bcCYazjJYx
 p7RGZ3X+1SmtbQNhojOBQ5pJwwse0UMC2mQSf4u/ZtL2cAtL9SmT
X-Google-Smtp-Source: AGHT+IEmMyjbt5zC8HyXDYsAM1yJB6Hewc/4Omte77HBnj8s9sJO3KwuLiGqZsA5Zf/LE6Xx1smxaA==
X-Received: by 2002:a81:e349:0:b0:608:d188:6fd9 with SMTP id
 w9-20020a81e349000000b00608d1886fd9mr5562117ywl.33.1709138330762; 
 Wed, 28 Feb 2024 08:38:50 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 y130-20020a0dd688000000b00608a174f00fsm2468913ywd.55.2024.02.28.08.38.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:38:49 -0800 (PST)
Date: Wed, 28 Feb 2024 08:38:49 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9hmZaMIcip4ndA@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-18-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-18-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709138331; x=1709743131; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jTwj7YTldw7xXwxIUCBnkzOCQU6UVFcauswdy14IwOs=;
 b=FVprIiSHeR6THzfoc4YaHYgWT60LELRBDszovS1DpNp2SE0bcxV1yqb8h9dUN+jvQd
 VrstRuhL9UO7bHfdjk9L5mMk7d3DijtpcmOH0+9MKfJUShQq+IWHH4PlxOE9T57dGGN6
 UMeTOfNF1t1uEtDMwchIpnlIhicD6ws667kfN2tmGMnE4EDUEC4sNz7wkuWVYWhLlqlM
 5t1hdZRGdClaP4gIL+bSW7oEnZBOzjrfENgF0kusrHJasbgUEAiCirHLO6k4VHPU44WP
 7+NQCZf8K4AcB28d6ESOyfoPbtUj8eUde8TNu+TOtC+E81+s6LbcQ+SJWJYpK/fdcCWz
 tH/Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=FVprIiSH
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 17/21] lib/bitmap: add
 tests for IP tunnel flags conversion helpers
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:22:12PM +0100, Alexander Lobakin wrote:
> Now that there are helpers for converting IP tunnel flags between the
> old __be16 format and the bitmap format, make sure they work as expected
> by adding a couple of tests to the bitmap testing suite. The helpers are
> all inline, so no dependencies on the related CONFIG_* (or a standalone
> module) are needed.
> 
> Cover three possible cases:
> 
> 1. No bits past BIT(15) are set, VTI/SIT bits are not set. This
>    conversion is almost a direct assignment.
> 2. No bits past BIT(15) are set, but VTI/SIT bit is set. During the
>    conversion, it must be transformed into BIT(16) in the bitmap,
>    but still compatible with the __be16 format.
> 3. The bitmap has bits past BIT(15) set (not the VTI/SIT one). The
>    result will be truncated.
>    Note that currently __IP_TUNNEL_FLAG_NUM is 17 (incl. special),
>    which means that the result of this case is currently
>    semi-false-positive. When BIT(17) is finally here, it will be
>    adjusted accordingly.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

So why testing IP tunnels stuff in lib/test_bitmap? I think it should
go with the rest of networking code.

> ---
>  lib/test_bitmap.c | 105 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 105 insertions(+)
> 
> diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
> index 4ee1f8ceb51d..270afc0cba5c 100644
> --- a/lib/test_bitmap.c
> +++ b/lib/test_bitmap.c
> @@ -14,6 +14,8 @@
>  #include <linux/string.h>
>  #include <linux/uaccess.h>
>  
> +#include <net/ip_tunnels.h>
> +
>  #include "../tools/testing/selftests/kselftest_module.h"
>  
>  #define EXP1_IN_BITS	(sizeof(exp1) * 8)
> @@ -1409,6 +1411,108 @@ static void __init test_bitmap_write_perf(void)
>  
>  #undef TEST_BIT_LEN
>  
> +struct ip_tunnel_flags_test {
> +	const u16	*src_bits;
> +	const u16	*exp_bits;
> +	u8		src_num;
> +	u8		exp_num;
> +	__be16		exp_val;
> +	bool		exp_comp:1;
> +};
> +
> +#define IP_TUNNEL_FLAGS_TEST(src, comp, eval, exp) {	\
> +	.src_bits	= (src),			\
> +	.src_num	= ARRAY_SIZE(src),		\
> +	.exp_comp	= (comp),			\
> +	.exp_val	= (eval),			\
> +	.exp_bits	= (exp),			\
> +	.exp_num	= ARRAY_SIZE(exp),		\
> +}
> +
> +/* These are __be16-compatible and can be compared as is */
> +static const u16 ip_tunnel_flags_1[] __initconst = {
> +	IP_TUNNEL_KEY_BIT,
> +	IP_TUNNEL_STRICT_BIT,
> +	IP_TUNNEL_ERSPAN_OPT_BIT,
> +};
> +
> +/*
> + * Due to the previous flags design limitation, setting either
> + * ``IP_TUNNEL_CSUM_BIT`` (on Big Endian) or ``IP_TUNNEL_DONT_FRAGMENT_BIT``
> + * (on Little) also sets VTI/ISATAP bit. In the bitmap implementation, they
> + * correspond to ``BIT(16)``, which is bigger than ``U16_MAX``, but still is
> + * backward-compatible.
> + */
> +#ifdef __BIG_ENDIAN
> +#define IP_TUNNEL_CONFLICT_BIT	IP_TUNNEL_CSUM_BIT
> +#else
> +#define IP_TUNNEL_CONFLICT_BIT	IP_TUNNEL_DONT_FRAGMENT_BIT
> +#endif
> +
> +static const u16 ip_tunnel_flags_2_src[] __initconst = {
> +	IP_TUNNEL_CONFLICT_BIT,
> +};
> +
> +static const u16 ip_tunnel_flags_2_exp[] __initconst = {
> +	IP_TUNNEL_CONFLICT_BIT,
> +	IP_TUNNEL_SIT_ISATAP_BIT,
> +};
> +
> +/* Bits 17 and higher are not compatible with __be16 flags */
> +static const u16 ip_tunnel_flags_3_src[] __initconst = {
> +	IP_TUNNEL_VXLAN_OPT_BIT,
> +	17,
> +	18,
> +	20,
> +};
> +
> +static const u16 ip_tunnel_flags_3_exp[] __initconst = {
> +	IP_TUNNEL_VXLAN_OPT_BIT,
> +};
> +
> +static const struct ip_tunnel_flags_test ip_tunnel_flags_test[] __initconst = {
> +	IP_TUNNEL_FLAGS_TEST(ip_tunnel_flags_1, true,
> +			     cpu_to_be16(BIT(IP_TUNNEL_KEY_BIT) |
> +					 BIT(IP_TUNNEL_STRICT_BIT) |
> +					 BIT(IP_TUNNEL_ERSPAN_OPT_BIT)),
> +			     ip_tunnel_flags_1),
> +	IP_TUNNEL_FLAGS_TEST(ip_tunnel_flags_2_src, true, VTI_ISVTI,
> +			     ip_tunnel_flags_2_exp),
> +	IP_TUNNEL_FLAGS_TEST(ip_tunnel_flags_3_src,
> +			     /*
> +			      * This must be set to ``false`` once
> +			      * ``__IP_TUNNEL_FLAG_NUM`` goes above 17.
> +			      */
> +			     true,
> +			     cpu_to_be16(BIT(IP_TUNNEL_VXLAN_OPT_BIT)),
> +			     ip_tunnel_flags_3_exp),
> +};
> +
> +static void __init test_ip_tunnel_flags(void)
> +{
> +	for (u32 i = 0; i < ARRAY_SIZE(ip_tunnel_flags_test); i++) {
> +		typeof(*ip_tunnel_flags_test) *test = &ip_tunnel_flags_test[i];
> +		IP_TUNNEL_DECLARE_FLAGS(src) = { };
> +		IP_TUNNEL_DECLARE_FLAGS(exp) = { };
> +		IP_TUNNEL_DECLARE_FLAGS(out);
> +
> +		for (u32 j = 0; j < test->src_num; j++)
> +			__set_bit(test->src_bits[j], src);
> +
> +		for (u32 j = 0; j < test->exp_num; j++)
> +			__set_bit(test->exp_bits[j], exp);
> +
> +		ip_tunnel_flags_from_be16(out, test->exp_val);
> +
> +		expect_eq_uint(test->exp_comp,
> +			       ip_tunnel_flags_is_be16_compat(src));
> +		expect_eq_uint((__force u16)test->exp_val,
> +			       (__force u16)ip_tunnel_flags_to_be16(src));
> +
> +		__ipt_flag_op(expect_eq_bitmap, exp, out);
> +	}
> +}
> +
>  static void __init selftest(void)
>  {
>  	test_zero_clear();
> @@ -1428,6 +1532,7 @@ static void __init selftest(void)
>  	test_bitmap_read_write();
>  	test_bitmap_read_perf();
>  	test_bitmap_write_perf();
> +	test_ip_tunnel_flags();
>  
>  	test_find_nth_bit();
>  	test_for_each_set_bit();
> -- 
> 2.43.0
