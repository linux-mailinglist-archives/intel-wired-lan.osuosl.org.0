Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aABMCg852WkjnggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 19:53:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A023DB37A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 19:53:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4B11610F8;
	Fri, 10 Apr 2026 17:53:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJD5LxMlDBzW; Fri, 10 Apr 2026 17:53:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47FE3610F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775843594;
	bh=Sq+y/9byaIkL7h6Mh25RQ0k7WMeVVSbAl+IgT/3yRhM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Zj9aofsCOV46pVfCLotnOCjwoyuHBZ/LS3WLpN6qpIar7JjIi2MYlb5wYEH6F6zJR
	 6BfNcGtEG5D5Q3TpO812IeBHPO+acA7eoU0PT1udR3nIxCumtTpSk64Zc5qfZd/PH6
	 s7Cq+5doOnT5hPINLTpzEriDb3uFvGh7DCkHIuk1YbqLr7tQnVT5YyfJ9cAW3TYfM0
	 01UU3RboeogctnTX/Ik+RdrQZSUmz6JIFqgBKxPNbSax43XnBhCzcvWDsezmB30RfX
	 li9ggcnfbBkqza+cv+eOB8fjpxhf3gtr4VD1ydDZqK1Wfqev12Jzt8DS9dmskTrnBH
	 3ghuzXQYoXjeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47FE3610F6;
	Fri, 10 Apr 2026 17:53:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 09142EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 17:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2B32610F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 17:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZU1v-h1d3utH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 17:53:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52b; helo=mail-pg1-x52b.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 479B4610F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 479B4610F3
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 479B4610F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 17:53:10 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-c76b6abdb73so1667318a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 10:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775843590; x=1776448390;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Sq+y/9byaIkL7h6Mh25RQ0k7WMeVVSbAl+IgT/3yRhM=;
 b=EhKf3mJklnDosWGY19Y0WIxxYDypKnYPMoRt4hAavI27qdd3jR8CEWPh/2iAKD6aIY
 i0QOJVb2H48kZNpY3ptXsLozTAsp7dC5b9wcLmwdE/LyCk0X9wDoCTEbZvN8PgBkRfHE
 GTJAjivzSLuADPzu6CQVLHUvjGGHwDEQV/SkJrrcMyV4SQ1jzCV9rndrZrr2YNYUr7Tf
 WEA5UEPZY3pIr0Zlx7cYs5YqVdN37gonlbKJ0WtwzlhpUPSuk9TbQxYGVcEHUaZ/+pgJ
 rsMZ7IsPyZu71FaLoyZTMWKvhC+Z7is80c0jLOFxsM0dTk5SwScNHYhu3RY3xlDE5AU8
 YlRw==
X-Gm-Message-State: AOJu0YxbLm+i3X2diD6ospwaIm8i7EsEDdr69hRcSwvnzqmUIhT0hZEB
 TikGzCMl/4cecjFeTyoXcwUTBVnyKn7J6N8iaIH13sApkhuDzdIZmLjZDbtEUQWr320=
X-Gm-Gg: AeBDies+MsWNVtbwJS9Vsqbh7MRd/lVb5aLMxNAqB2dvN2yEN7AiGQQ94uNt3+snTDl
 ki8X32gwjVLsGgp/C6rGd6YZv11a/hU0V3X+NUQLT6kFwUqDDKUq0EPmYuGOl6VhKtZUjQDiKUZ
 CX037h3ObdcdbxUIs1Xdb7xy094yww++LJF7nk/zFG0uyk5ANtMpEwxzTFRjn9FpWuf5ERd9UK7
 SPfTOdoyUmM6fLNBsN6q306/FdHcixCUp5vgFEgvwb8i23bXoil/+D2vsXvqW+F/hHKHnteRxAX
 8eonpuCboWZg2jp18oYEBvvJmqIqxnAwAsJne9+OS1r1DhjftypBZsf4akhTPIbrH2MQ3vhbKEK
 9Zt3C4DwEdGuRGyDi6W/U61FoJdRcItM7pabe5/+orqyAcg8txXtCGu0O6VHCDBQlO6Zo8HI0/2
 lYtANzY6RgLzwt5jE=
X-Received: by 2002:a05:6a20:12d0:b0:39f:794f:94d8 with SMTP id
 adf61e73a8af0-39fe3f49777mr4765807637.29.1775843590350; 
 Fri, 10 Apr 2026 10:53:10 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:46::])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c79218fc7e7sm3005525a12.10.2026.04.10.10.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2026 10:53:09 -0700 (PDT)
Date: Fri, 10 Apr 2026 10:53:09 -0700
From: Joe Damato <joe@dama.to>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Leszek Pepiak <leszek.pepiak@intel.com>
Message-ID: <adk5BS7W24iwY2qt@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Leszek Pepiak <leszek.pepiak@intel.com>
References: <20260409093020.3808687-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409093020.3808687-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20251104.gappssmtp.com; s=20251104; t=1775843590; x=1776448390;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Sq+y/9byaIkL7h6Mh25RQ0k7WMeVVSbAl+IgT/3yRhM=;
 b=mkRN06LG3crl31RJovVAMqdutVxL3tNFiF47WIpGwL1BHafFz2N9Oyv1LmqVZn0/6+
 QsQWWxsxJDUE7y5UDsbp6dwo/8+OsjD2mhkfxMAuUSR8wHvIwqTfzcE+h0gG3fZ4/+/S
 TLFwLNd88tnfdiK2rwp73yCT2XNfO4OBi+Fba0PngBnXVWwcOiXqQY0VplQpyWviwQ0o
 1BtxioO8Lpj9fSM6AeRFZ5Ah8HX2qw0t2suRIGySpVZoEB3DijVqas9teH6jPQTYofGh
 tD40rvKB7Ajx22YmdDQ5XlUk/Adu2Yq4lSTFYT6nvopAu57kxJ180NvnRUJ5SUpssHeq
 fKvQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20251104.gappssmtp.com
 header.i=@dama-to.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=mkRN06LG
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: fix kernel-doc
 comment style in iavf_ethtool.c
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[dama.to];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F3A023DB37A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 11:30:20AM +0200, Aleksandr Loktionov wrote:
> iavf_ethtool.c contains 31 kernel-doc comment blocks using the legacy
> `**/` terminator instead of the correct single `*/`. Two function
> headers also use a colon separator (`iavf_get_channels:`,
> `iavf_set_channels:`) instead of the ` - ` dash required by kernel-doc.
> 
> Additionally several comments embed their return-value descriptions in
> the body paragraph, producing `scripts/kernel-doc -Wreturn` warnings.
> Void functions that incorrectly say "Returns ..." are also rephrased.
> 
> Fix all issues across the full file:
>  - Replace every `**/` terminator with `*/`.
>  - Change `function_name:` doc headers to `function_name -`.
>  - Move inline "Returns ..." sentences into dedicated `Return:` sections
>    for non-void functions (iavf_get_msglevel, iavf_get_rxnfc,
>    iavf_set_channels, iavf_get_rxfh_key_size, iavf_get_rxfh_indir_size,
>    iavf_get_rxfh, iavf_set_rxfh).
>  - Rephrase body descriptions in void functions that incorrectly said
>    "Returns ..." (iavf_get_drvinfo, iavf_get_ringparam, iavf_get_coalesce).
>  - Remove boilerplate body text for iavf_get_rxfh_key_size and
>    iavf_get_rxfh_indir_size; the `Return:` line now conveys the same
>    information without the vague "Returns the table size." sentence.
> 
> Suggested-by: Anthony L. Nguyen <anthony.l.nguyen@intel.com>
> Suggested-by: Leszek Pepiak <leszek.pepiak@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2 extending the scope of the changes to whole iavf_ethtool.c file
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 103 ++++++++++++------------
>  1 file changed, 53 insertions(+), 50 deletions(-)

Reviewed-by: Joe Damato <joe@dama.to>
