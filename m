Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NBPCguJ82md4wEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 975D64A60B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 18:53:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A255442BBC;
	Thu, 30 Apr 2026 16:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fnU8kb4aWuaj; Thu, 30 Apr 2026 16:53:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9E7642BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777568007;
	bh=kGaorEyZYwXUrpqtvF2wYxBfD162OIEpEP/P+Q+kjPA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GRhc5WZqo1HLyp4Klg8RzGXgc4WA/M3PRJ6v9VynhiqsXtf43LO1w0jkVbSdYewcm
	 WtSSS4uF9nDyWX+FbAuuBbI70CHx4WUQJyRHo7DvKRMQFIHTlFEmI7lOvZ0251D9Hb
	 Z2ElxFn6dq/45oiRtR1WRmbybtNzk03b4qJZGFzufKCApMXwjbIXtpiipBF/ubsfh3
	 7iBHOkRLn7XeOvuHNgjx7Labyvu+Vl6/G+DjWWv+VhW47zB6CI5x6USkZfCkLi0Yde
	 Q4WzCmrCAdAhODDtKpCPKpyh6PNW3d3VLF4N26qTQ9CmvcM81dOtwv8uKBnW7aLZmu
	 n6mCZ5G7YwPmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9E7642BC0;
	Thu, 30 Apr 2026 16:53:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E01E231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FDF881A34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JoGyohurvDRP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 10:25:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=error27@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 590CD819F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 590CD819F6
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 590CD819F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 10:25:02 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-4852a9c6309so112428565e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777458300; x=1778063100;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kGaorEyZYwXUrpqtvF2wYxBfD162OIEpEP/P+Q+kjPA=;
 b=UiAcn90JQyRNJWkLEwsBX0sZmkcULfnWq6StwDlbjOObAYeII/GpTxAMt49/JWoq5s
 QNM+EcRBcEyeWN/4iUwIA64xMOErJS9uF2wfV+WKKwzu+oDgvd7PNCmSYTFsWsm7ryIe
 rlbkO4vIk7xLfNIMVBPP/nweC81ImvC8ytJAIu+7FJOGoum8Vja9B92Jfgjj85B64UDM
 fgYijyvspFm4FKMHFps2OFh2FI+DeAdjxJ0ntP2IENL16EP6fvWNl6ySsaZHvsvvrLYX
 QuIgM6zWBK3svmkGxpafRbclrRm7yKRcmOzXjS37bLboRGHtsnYJ7bReMtP5/sb7p1RW
 vyuA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+RG4jnsRBGXQBavJlPO2KsaXahKBcrv77YbDwoE/6w6jjhYG2olmMzvoW6uqmpmMN7PvVI6YXtVkT/9DKZVFs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyHmCbdys5y/NAl4S51mV2JRm2rq+000Rwy7DwbLxBC+2AwFXOj
 xjFTsJQx2jMD0c3dojrQkrfuR3Oo/30ItwDQV3A6FgS7gbkEBUqgpBrZ
X-Gm-Gg: AeBDievJM6HsoDlajgv4pj5uMskGbULJGw7vgX3RLjfx7UkAEYXNUAwubHOfC6WpuQh
 oCosK53WZqNh+OnDLRh0SCuT1rxsJQo3GCZfu1gmknQrmALb1ZcBr/w1FhCc7/DgCtXACmkwh7n
 jW9UVJBYjOFobqvb6Iu0SS1lvut0AEAmlulhPuAkrQvankbJHmoO65wOBix4AktmRYKAoi1HvL6
 becpOKkDBUGnImI91Fh638VHz50zKDwDMPjOKK61vR5cTXBJ2+t/lxnLM+IVd7bEihcNYZH9qmF
 i5mvZQTUq/M9xp+OkPkmaQI+I8WAHKyoiLho5urRtN4fKUoXH25AwabV/pgDVFHA8/JXwGmzl78
 2XsnFDj4v/Z2fI3/2L8ZxyDq57sGQDBgHwtceL5eeXxY9+QvUXEViwlGWFwnX2sIDCpwY6AkTru
 Fy/YZRCLkFvdAVFcWvdWQCsrBOz5PHJFko7wHQRKum
X-Received: by 2002:a05:600c:1c20:b0:489:1aed:1658 with SMTP id
 5b1f17b1804b1-48a77b241admr115999145e9.23.1777458299919; 
 Wed, 29 Apr 2026 03:24:59 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48a7b9116efsm18185095e9.4.2026.04.29.03.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2026 03:24:59 -0700 (PDT)
Date: Wed, 29 Apr 2026 13:24:55 +0300
From: Dan Carpenter <error27@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jakub Raczynski <j.raczynski@samsung.com>, netdev@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <afHcd7BfFx8WzpMn@stanley.mountain>
References: <CGME20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931@eucas1p1.samsung.com>
 <20260428103653.3539239-1-j.raczynski@samsung.com>
 <ef61b770-ebf4-406a-90a0-8a49aba02aee@intel.com>
 <afDL02Z4QV6G0UxF@stanley.mountain>
 <b0a706e1-2494-40b4-836f-f5d32c6b0fef@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0a706e1-2494-40b4-836f-f5d32c6b0fef@intel.com>
X-Mailman-Approved-At: Thu, 30 Apr 2026 16:53:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777458300; x=1778063100; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kGaorEyZYwXUrpqtvF2wYxBfD162OIEpEP/P+Q+kjPA=;
 b=sI2k5WJPsfzuUvDBawy45z2zS9GXxoCjqDPAUsY0qTQRrn1ZCAZQzsyWtqra/0X0iA
 PCqlHgbH3gpwzS629ndJylu6mrkbWaB2J2LyfImM1DRdo8WsDpMOILwevdvCKaFOK47O
 gL2q9JYXUbZmFLxKOGH7FjjVfu5PvejoKGwun++5D2wYbxjznDqbwE34Xl016UqWt95g
 LISA19c06QhfreeGrk54ANGskd0eQy921kaBgEdh9S9LdFzvKPh8ybHcSuHe4ijNTjHd
 xna7yllGAgBZZFU/0iqPxi0f6U7wSxTv/ZEaIGME9ONu7Sh8t3fs7piPd5WjjJnAadO4
 063w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=sI2k5WJP
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] net/intel: Replace manual
 array size calculation with ARRAY_SIZE
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
X-Rspamd-Queue-Id: 975D64A60B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	DATE_IN_PAST(1.00)[30];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:j.raczynski@samsung.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

On Wed, Apr 29, 2026 at 11:01:46AM +0200, Przemek Kitszel wrote:
> F:	Documentation/networking/device_drivers/ethernet/intel/
> F:	drivers/net/ethernet/intel/
> F:	drivers/net/ethernet/intel/*/
> F:	include/linux/avf/virtchnl.h
> F:	include/linux/net/intel/*/
> 

Fine.  Thanks.  I can add this.

> Perhaps instead of you managing your script, and everybody else doing
> the same, there could be some extension added to MAINTAINERS file to
> encode the prefix?
> 
> In our case, the prefix itself is a message for net maintainers:
> iwl or iwl-next means the patch will go first via our tree, and be sent
> later as a PR for net/net-next.
> 
> Without the prefix it requires guessing what was the submitter intent.

We don't have any intent.  So long as it gets merged who cares how it
happens?

> Most patches that go through IWL receive additional round of testing on
> real HW too, thanks to our VAL.
> Patches that go straight to net are just merged faster.
> As intel ethernet maintainer, I want our code tested more, instead of
> merged faster (in most cases).

All of this scripting could be done on your end.  No matter how many
dozens of people you educate to add a different prefix it's always
going to be less reliable than just scripting it on your side.

Anyway, here is the relevant bit from my script.  The other subsystem
that requires these is BPF but I only send bug reports for BPF issues.
You also need to do a git fetch of all the trees with subsystem rules.

regards,
dan carpenter

# Is this networking?
if grep -q netdev $MAIL_FILE && ! grep -q wireless $MAIL_FILE ; then
    if [ "$FIXES_COMMIT" != "" ] ; then
        if git merge-base --is-ancestor $FIXES_COMMIT net/main ; then
            TREE="net"
        elif git merge-base --is-ancestor $FIXES_COMMIT net-next/main ; then
            TREE="net-next"
        else
            TREE="net-other"
        fi
    else
        TREE="net-next"
    fi
fi

# Is this Intel Wireless
if grep -q -w /iwlwifi/ $MAIL_FILE ; then
    if [ "$FIXES_COMMIT" != "" ] ; then
        if git merge-base --is-ancestor $FIXES_COMMIT iwlwifi/fixes ; then
            TREE="iwlwifi"
        elif git merge-base --is-ancestor $FIXES_COMMIT iwlwifi/next ; then
            TREE="iwlwifi-next"
        else
            TREE="iwlwifi-other"
        fi
    else
        TREE="iwlwifi-next"
    fi
fi

# Otherwise if the commit is only required in next then put [PATCH next]
# in the subject.
if [ "$TREE" == "" ] ; then
    if [ "$FIXES_COMMIT" != "" ] ; then
        if ! git merge-base --is-ancestor $FIXES_COMMIT origin/master ; then
            TREE="next"
        fi
    fi
fi


