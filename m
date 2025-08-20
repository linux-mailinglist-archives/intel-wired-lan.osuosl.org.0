Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 431A2B2D45C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 08:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E676A827AF;
	Wed, 20 Aug 2025 06:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsH9ueSrzGR7; Wed, 20 Aug 2025 06:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C20E7827B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755673042;
	bh=bTd4HQ4hZ9kdSR/qL4zChOVvJUgQXNgDfAOSz7Jn0FU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wQX9kkVL8hV7PHVj+0csCmUq6goBblyaYvmVMyLMzl2gFA70/17vFmrWxlzMGU5Cy
	 OuZ5qDG6DZMClldGcl+H/IS/xbDNWHUoickbBMk8gCJjGhJiqP/uozyEmclfjjTpgM
	 Sd8J37pi1ey35H7SVJTaLLAhL5S2mj6Efy5YvkyC+HIyXIIB9n1OlFDlbHHhmDrfGX
	 OwhKUomwyfvsGS2FIWunKycdyk/Ui3whm0UaOUi/KxBsL6OHgKDbdnECsv8BI5ruI+
	 i3YlRVDAv9jwzXI6kwV3xT1Ya3EUHQPCWJGtOqOUsXWpO+12SRlWjP6Nfoh1PxdjHs
	 NKhU0zJepQoZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C20E7827B1;
	Wed, 20 Aug 2025 06:57:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EF5D7AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D8F7827A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EB3H7pbNi5JT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 06:57:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.208.182;
 helo=mail-lj1-f182.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9811827A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9811827A1
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9811827A1
 for <intel-wired-lan@osuosl.org>; Wed, 20 Aug 2025 06:57:18 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-335360f9b6aso5456721fa.0
 for <intel-wired-lan@osuosl.org>; Tue, 19 Aug 2025 23:57:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755673036; x=1756277836;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bTd4HQ4hZ9kdSR/qL4zChOVvJUgQXNgDfAOSz7Jn0FU=;
 b=b31iCsUV/eQSMdysGPTO4coJfBYQAevoGp5NjRii1S/QWhMlKUCZ6aG1oNLAgOsO0i
 ADuqhqZsUBbGmB8kKq/yg0Dap/8JMvuGAau3SPLtESNPLyhhaZNbRtutuR1/jay3nwI6
 0c3i8zr+9b8++22DZRxiumZ+hLqxYxHw/rVKA/ffMmQeatlsvGNtJ9FEnfq9aFpvs5f5
 9g7CRaRozVKfnKkWxpNpV28MXohtkeseNBGIQB+GTqoHlO7lRbcuRhN6d7L55qQzwvDE
 v0OBCLGDYCkgZnReUNNEohL7voQcXUe7/JVTeoNrOl9994I2s9flAIdoUAHDWkVEGxbY
 yXJQ==
X-Gm-Message-State: AOJu0YzdYdWjcb9qab2QxbxCPIS7mCtuUqTG+awiRHxLPPsnFi4wrcjZ
 m2e61NKAsXwhB8S03K7MBq4NO22RyrkaheSyX2PNijUEWhtIJze25iac
X-Gm-Gg: ASbGncueZc29WrAdp5Mzrq28jctCI4cvfyyVZZvV+VFOKkFxgGLb3OGFS2Crk65tJb/
 AmYt7bQtgbWFTyC+TG7oJ35r1uOXqrwMbVIa1EKH0RA1kKOkf/WqJR8BKMAWESBW+nQdeR+PzB0
 Q0hjUT1HtOgbE9SGNKrHEQomcP03eC+UaI2UC1zrB48C8YBr+L2zUco+GNANXqTGbbM4Al16zMV
 UrdcVNzPeh3UfhgaFgHJnn7bbIhKFulmrE/giZLjoVrDO7FoIbdED+k8XkKRp32DMftylA6kNbl
 oM3+pAfY2rphDYBH7pZcHKDiaLW7pfGzNVFsEDGktbCJnEU6iONDo45LEA90uVEYvwxuswdzfGL
 0eZ47O+STlIUj9ozbkbMV0J5rr13G3Z+wV+GO7+C2xROF4iH7x2vw3XOh
X-Google-Smtp-Source: AGHT+IE27lB6nIg035Y5E1Ffd+UY1NXxDfRdmP07rQj8eiLhKGx9EJmM2BBiU+FRkb8C3etTipvtsQ==
X-Received: by 2002:a05:651c:4110:b0:333:9178:e132 with SMTP id
 38308e7fff4ca-335314b5e31mr8867851fa.20.1755673036037; 
 Tue, 19 Aug 2025 23:57:16 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-3340a604776sm25858141fa.47.2025.08.19.23.57.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 23:57:15 -0700 (PDT)
Date: Wed, 20 Aug 2025 09:57:08 +0300
From: Timo Teras <timo.teras@iki.fi>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <intel-wired-lan@osuosl.org>, <en-wei.wu@canonical.com>,
 <marmarek@invisiblethingslab.com>
Message-ID: <20250820095708.3e3060fb@onyx.my.domain>
In-Reply-To: <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <20250819201032.3873c62b@onyx.my.domain>
 <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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

On Wed, 20 Aug 2025 09:43:38 +0300
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 8/19/2025 8:10 PM, Timo Teras wrote:
> > On Tue, 19 Aug 2025 15:43:26 +0300
> > Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> >   
> >> The K1 state reduces power consumption on ICH family network
> >> controllers during idle periods, similarly to L1 state on PCI
> >> Express NICs. Therefore, it is recommended and enabled by default.
> >> However, on some systems it has been observed to have adverse side
> >> effects, such as packet loss. It has been established through debug
> >> that the problem may be due to firmware misconfiguration of
> >> specific systems, interoperability with certain link partners, or
> >> marginal electrical conditions of specific units.
> >>
> >> These problems typically cannot be fixed in the field, and generic
> >> workarounds to resolve the side effects on all systems, while
> >> keeping K1 enabled, were found infeasible.
> >> Therefore, add the option for users to globally disable K1 idle
> >> state on the adapter.  
> > 
> > Thanks for adding this!
> > 
> > However, as a user, I find it inconvenient if the default setting
> > results in a subtly broken system on a device I just from a store.
> > 
> > Since this affects devices from multiple large vendors, would it be
> > possible to add some kind of quirk mechanism to automatically enable
> > this on known "bad" systems. Perhaps something based on the DMI or
> > other system specific information. Could something like this be
> > implemented?
> > 
> > At least in my use case I have multiple e1000e using laptops on the
> > same link partner working, and only one broken device for which I
> > reported this issue. So at least on my experience the issue relates
> > to specific system primarily (perhaps also requiring a specific link
> > partner for the issue to show up).
> 
> Unfortunately, there is no visible configuration that allows the
> driver to reliably identify problematic systems.
> If in the future we find such data, then we can improve the
> workaround and make it automatic.
> 
> At present, the user-controlled interface is the best we have.

Could you look at:
 - drivers/hid/i2c-hid/i2c-hid-dmi-quirks.c
 - drivers/soundwire/dmi-quirks.c

These use dmi_first_match() to match the DMI information of the system
and then apply quirks based on the matching per-system data.

Having similar mechanism in e1000e should be possible, right?

I am happy to provide the needed DMI information from my system if this
works out.

Timo
