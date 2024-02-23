Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC9B860E73
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 10:45:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52D8741C4F;
	Fri, 23 Feb 2024 09:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PJehtbmuq3_h; Fri, 23 Feb 2024 09:45:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1400540124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708681512;
	bh=+nH1F52q4rLe3ymlUZMyRqVEVVMZkXwzmavUZRGEwv4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S/MMpdTo3iShCjOoILwxU85no5L16HxY3uHSkjVRy4rTZm7pQRrBsO0VrRU0KcgQE
	 BHoF9GfguIPVH5Xcu9FeQh8OjlZgP6T9xWC1pkoPbccNds/3/QR9JyTQhqiKsrAW2k
	 Fe6H4FyF1vnZct/KJpqDIUGFI5ppyOKSRg5DltFni+Km4UPAb7elayyd5nlW61qRlc
	 6Y49edRF0ZtvLDjdALMFmtlNF80jF0dLKPDD5hnpCu3Z5hklbeQNRjvg1XaomGpZcM
	 jUdzyq0v+LqRLgPwOqExC6BpyABFqa9I5bJwCG9PaeWeCa7ffSsZXhT5YPuhC0duHO
	 rtcu45jnRSzwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1400540124;
	Fri, 23 Feb 2024 09:45:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9D551BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 09:45:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B26CB41C41
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 09:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5y5zkS87Rh8J for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 09:45:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42b; helo=mail-wr1-x42b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C028640124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C028640124
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C028640124
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 09:45:05 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-33d509ab80eso90585f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 01:45:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708681503; x=1709286303;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+nH1F52q4rLe3ymlUZMyRqVEVVMZkXwzmavUZRGEwv4=;
 b=UXYesaVhu6CkgYzlgbFGMzI67nIalJi+nCfkToWs09gDKV4+ax5eQX7pOFeUKm5M8E
 p/awjznQrheWwPdgJRY2VZ2z2tuvL2YSpeU/CwjZtEGctQk/1xpIEysXy9TEC2fJv+7j
 m6JVJ6TJlhl0ZyI2AJ6b7d3qt/h9NUKGgetovyLwchmvAfYezYtsI4HXObPu3tdSvwLb
 35qeZwdnEJy+5to/0ZLwjgRawT+4o/tpCHjp8+7spbd5dLNKwIB7ZDGqdP+ZsBWr90Lt
 rTCWCmOndO0Sk3iglxbCMMngjzjN/nXNAUf6cEW1yuhn4dfSEY+Zccutrv+pZJAxxKqB
 PbBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWMiqzfPLyVdjuUXEZ6KBePvwC9gvnSgx8Nl3rk3CnTZZA4WegZKzD1+1REHl54vZXyTgy9Vqs6Fx+J7teAaaR3+7BX9y6Ia5kNa1v+PdWBDA==
X-Gm-Message-State: AOJu0YwmXHSakrHmwR1mta0EE7CE3bJ1YvLqCxCv49g987zzdZ5mpwbL
 89JdymVEBpHHMDMprhxSD7HAZzA3UxiqAET+SU4ircrgSXTqrrBV3BBOQKfYS2w=
X-Google-Smtp-Source: AGHT+IEMYZMDyaCNjC5G1U1WTbH2JglqVVhiwwy0U9OE9LYAfJieqXydgfrrbq/8v5nS0XunwGDuQQ==
X-Received: by 2002:a5d:4e89:0:b0:33d:746b:f360 with SMTP id
 e9-20020a5d4e89000000b0033d746bf360mr956434wru.51.1708681503176; 
 Fri, 23 Feb 2024 01:45:03 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 r5-20020adff105000000b003392206c808sm2139169wro.105.2024.02.23.01.45.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Feb 2024 01:45:02 -0800 (PST)
Date: Fri, 23 Feb 2024 10:45:01 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZdhpHSWIbcTE-LQh@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222150717.627209a9@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1708681503; x=1709286303;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+nH1F52q4rLe3ymlUZMyRqVEVVMZkXwzmavUZRGEwv4=;
 b=DbJAnnML1kvSiyj/uH6u3GZuTgTf1ithg2eqWK9UP6jMEf0t8qw2Cyog71SlVfu6l7
 sV1nTbHef+Rgu35ljduqCHnZePCTdeo42Ek811/gU8/7GftUeM+1l70On1nylj9RqV+X
 Om6nky5I9rPv8m36fkJuRRgDhprObWhPWMkilCC7glEWAanhjptCoBkC4khhwXHlzV+N
 ptZ2pOR9PlPFnHBNihKl7zsbP8udqBHvouQQQ0eIf3i1/AAWCfFIO8puo5VXbRVBeSEq
 fAlNNRxnrf9Vbhy+lyHx+T0BdfAizxc7Rj4wc+Rr9wsdnpr9Ta5tpmc90pQ45QXttmqO
 LDjQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=DbJAnnML
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Feb 23, 2024 at 12:07:17AM CET, kuba@kernel.org wrote:
>On Thu, 22 Feb 2024 14:25:21 +0100 Mateusz Polchlopek wrote:
>> >> This is kind of proprietary param similar to number of which were shot
>> >> down for mlx5 in past. Jakub?  
>> > 
>> > I remain somewhat confused about what this does.
>> > Specifically IIUC the problem is that the radix of each node is
>> > limited, so we need to start creating multi-layer hierarchies
>> > if we want a higher radix. Or in the "5-layer mode" the radix
>> > is automatically higher?  
>> 
>> Basically, switching from 9 to 5 layers topology allows us to have 512 
>> leaves instead of 8 leaves which improves performance. I will add this 
>> information to the commit message and Documentation too, when we get an 
>> ACK for devlink parameter.
>
>Sounds fine. Please update the doc to focus on the radix, rather than
>the layers. Layers are not so important to the user. And maybe give an
>example of things which won't be possible with 5-layer config.
>
>Jiri, I'm not aware of any other devices with this sort of trade off.
>We shouldn't add the param if either:
> - this can be changed dynamically as user instantiates rate limiters;
> - we know other devices have similar needs.
>If neither of those is true, param seems fine to me..

Where is this policy documented? If not, could you please? Let's make
this policy clear for now and for the future.
