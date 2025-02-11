Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D20FBA30EE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 15:58:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80B0260E55;
	Tue, 11 Feb 2025 14:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpU0pJCYIj0s; Tue, 11 Feb 2025 14:58:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6A1C60B51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739285924;
	bh=LoaezNQ5dV/9EG0tpbR4FMDwqT8KupFNVSUAN3IN2AM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wXftjjFf70qBVjSR6pQHO4rRHPmED5nNJPvPXSPF1OOMSW5F0H+YsXDANazVlDI6o
	 Nliw1Pbn8nTu8glLoQOBSLpAR1qjXZiUfkok5PYob8+OcIDTfaTQDa2wBlFIV/oeV3
	 +WPoPSr7yiIsAhkDkhTXhlrAtjEN7rYcmOTYWnMHMh6FbOqwlqCN7mh746spwLphQs
	 oSzQ7ch2OkqvyG1Uo10zeStqy1wjkN1MuFRg7oFPEMd8wB4kTmUyxF9rNL+9xQTtKY
	 CdAdBhBuyqPQDUK29UV1lQbQv7C9rwGmTaDi8lMnpl+eInulbx5lnK0DC4JkVHJZ1A
	 FpsvVCAkSIA/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6A1C60B51;
	Tue, 11 Feb 2025 14:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B8A4194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2672060ADF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JbqwU897aBAf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 14:58:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A697E60A99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A697E60A99
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A697E60A99
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 14:58:34 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-4364a37a1d7so56453875e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 06:58:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739285912; x=1739890712;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LoaezNQ5dV/9EG0tpbR4FMDwqT8KupFNVSUAN3IN2AM=;
 b=fT2yiLZszvkRTYp1b/X1T+jEUmB5EVmIRTqGmY3rsT1hgX/Ivpb67IXzeTUuJcR4Im
 oP1plIfcAm1s8WjCbmU8yelAhHgANfPUYNc51lB1d9DuTqUXLptM3lTctCyGu4uuerDn
 VJrJ9/YoS9dvdJTGb0lTftZ3j/V+yigWy2JaMQlOKMJKL4H9cBLJw99PT7DKjBrgkQlD
 sMpcznGoPVSCIo3ktlBLEZSM30hQTHKx9pdOnSkor1MWDwIgQdivGhZ6FUgTGWQFZQZN
 2k7GlzcjIQ+uNVeC7z3ckuJ32sYPW8F17tAt3PUUGB/IDcwVhCzReIajciNRwl9u1NT0
 ikPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbYjo2dhviIRsYqZSPSk7z0wECQRkNoYbCd1fDu0pILMXEj5RShRPGNo18IZ+Da/U6CK+7nocjeITNXDr30fk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyUe9SJN3dg3zVjPbAMW/vMR8GpW3NmQ8tsa68zKBz5UF212jIc
 T0fc248/EtcKjgK8ZPADOIODLkGFNkUtvUsBUrvRrnEPZ9n2KN81sWoRVF/WuBQ=
X-Gm-Gg: ASbGnct0r3bYSNNvdiGqaba5p51G+F+olxLhOeUjx3cyZi/qV6hXaVImeyvSZDdqTmc
 QzkTKQZ2VdeC2MBpHfaYooR8fj/h1056uJjfBoGD0hv5pJe5v2/TX/FPiLQplvwt3OUupQ/KgmM
 igVCFIfQ8UFW7feiQjGmMLXE0wAr8qluMLov4UnJkcmoQqiK3nNoVszCAShuTLFB/tk9tL2mjNb
 yGmrDOwl9QP8vmderyTlB0/xxTemfwuNMLPHNcQY1HgHDEQHj/aQ4SeXVBOj9ZLsaoSklDQdIm0
 faiqXAus5n23kgLvljEqgUo=
X-Google-Smtp-Source: AGHT+IHL0OJnuZEqNVcWxZ9zrAwEjLpFNma5IQgCQ1H/NCGrNKX3TzyjupN6rGBnskXGKbChGpwhgg==
X-Received: by 2002:a05:600c:1c96:b0:434:a30b:5455 with SMTP id
 5b1f17b1804b1-439249c6eb3mr146742895e9.27.1739285911887; 
 Tue, 11 Feb 2025 06:58:31 -0800 (PST)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43936bcc04fsm103764985e9.20.2025.02.11.06.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2025 06:58:31 -0800 (PST)
Date: Tue, 11 Feb 2025 15:58:24 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "horms@kernel.org" <horms@kernel.org>, 
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>
Message-ID: <wftf7fg3gtgmmjufdrtnnlkqzp4x233kmty67hnlchkym4u4ci@ubujjvrt2txa>
References: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
 <20250210135639.68674-3-jedrzej.jagielski@intel.com>
 <bxi2icjzf37njzl4q5euu6bbrvbfu2c557dksqtigtegxcnowo@yyfke6ocrtpf>
 <DS0PR11MB7785B1EF702ED5536D4B4CCBF0FD2@DS0PR11MB7785.namprd11.prod.outlook.com>
 <qmjitflm2k3zo5yiym74c6okjg5skzhb46evfhn6qpzkwch3uc@epvkzeg37n3f>
 <07f0e1d1-d526-4b35-8958-0abaf7ef4829@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07f0e1d1-d526-4b35-8958-0abaf7ef4829@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1739285912; x=1739890712;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LoaezNQ5dV/9EG0tpbR4FMDwqT8KupFNVSUAN3IN2AM=;
 b=hMNZi8vTa7JCz+Q/GSIROCn/txmr+EEzt5Q2caiEddaBKrn1wcWs4UZqqreXK8bmO3
 Or+zoNwwN+CDbaYE3K2YNrJ4v8QXSuV+MLfz+EAYwaQNz8EEjBVeOZOXw3BhUTcnaH2+
 EOTDU9vsQu1YwQzwFkL4zQrJ7R5u5krhVbft77qRO/0KHrRrfA7c5QcE8PU6Ymq3s+Tu
 I8rgOFZQHrJ9eLP7woRm6+9KEwvCnMj8Xq/X3eBeqLK/2PJ8Zb8qignVzyzDuln5CVLX
 ZxEkp7rLYqJvrSvnYFZlxQ/DkHARwvrU+50tusu85MJsg9BT9FoqLGIfYVptMZAnVFjh
 u2/w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=hMNZi8vT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ixgbe: add handler
 for devlink .info_get()
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

Tue, Feb 11, 2025 at 03:38:25PM +0100, przemyslaw.kitszel@intel.com wrote:
>On 2/11/25 13:52, Jiri Pirko wrote:
>> Tue, Feb 11, 2025 at 01:12:12PM +0100, jedrzej.jagielski@intel.com wrote:
>> > From: Jiri Pirko <jiri@resnulli.us>
>> > Sent: Monday, February 10, 2025 5:26 PM
>> > > Mon, Feb 10, 2025 at 02:56:28PM +0100, jedrzej.jagielski@intel.com wrote:
>> > > 
>> > > [...]
>> > > 
>> > > > +enum ixgbe_devlink_version_type {
>> > > > +	IXGBE_DL_VERSION_FIXED,
>> > > > +	IXGBE_DL_VERSION_RUNNING,
>> > > > +};
>> > > > +
>> > > > +static int ixgbe_devlink_info_put(struct devlink_info_req *req,
>> > > > +				  enum ixgbe_devlink_version_type type,
>> > > > +				  const char *key, const char *value)
>> > > 
>> > > I may be missing something, but what's the benefit of having this helper
>> > > instead of calling directly devlink_info_version_*_put()?
>> > 
>> > ixgbe devlink .info_get() supports various adapters across ixgbe portfolio which
>> > have various sets of version types - some version types are not applicable
>> > for some of the adapters - so we want just to check if it's *not empty.*
>> > 
>> > If so then we don't want to create such entry at all so avoid calling
>> > devlink_info_version_*_put() in this case.
>> > Putting value check prior each calling of devlink_info_version_*_put()
>> > would provide quite a code redundancy and would look not so good imho.
>> > 
>> > Me and Przemek are not fully convinced by adding such additional
>> > layer of abstraction but we defineltly need this value check to not
>> > print empty type or get error and return from the function.
>> > 
>> > Another solution would be to add such check to devlink function.
>> 
>> That sounds fine to me. Someone else may find this handy as well.
>Cool!
>
>perhaps we could also EXPORT devlink_info_version_put(), that would also
>help us reduce number of wrappers (also in other intel drivers)

Why not. Make sure you sanitize attr value.

