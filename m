Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D638316F895
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2020 08:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24D5C8693C;
	Wed, 26 Feb 2020 07:36:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CCUA8eGN5AOF; Wed, 26 Feb 2020 07:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9AB686631;
	Wed, 26 Feb 2020 07:36:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF2701BF419
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 07:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DAFF6868BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 07:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ifzfAuX2Iwe3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2020 07:36:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71C97853D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2020 07:36:05 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id u6so1694912wrt.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 23:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vZJyBk9lu1rD2qT5SftmPMZtuEheybwJNwMh28DMtwM=;
 b=McHjfQiP2MfCWpWh6In+efTkmR5day2EdpVK0zz9aWXVFtXNyFr5s+Ty0Jp09bnv5x
 giwD1pYAlibYR8WpBdokLDZU/JAkRJixIff1M4uF8wKM02YoLB76CctCk80dXlFh5x0w
 LAnVPm5I0Uiqj1wnz4nl1Wvm1preX89tkJnnEJQuVQhUsok1YA7cZ/EkHym50wg+B3Tv
 qtCpjF2rW80aE+ghH2PAcZ0el3b3Eptw+h7NttFdMEHH+D1upTwvvG1r1mlBtRKF65gb
 jGWjLflPkAYX6mftH2pWKjBIAKik3bI61l0k/A5XRxe+VKb3lGCWSmoG9vEeTiZ1KZme
 3l5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=vZJyBk9lu1rD2qT5SftmPMZtuEheybwJNwMh28DMtwM=;
 b=EMkmxni85mMQ+JYgS8IZFIrK4llKpm6DOMqTthmbHjg/bsy+TgtZ+o4y8rMBlpd4st
 Z6w3ErJQ/izpOHUXyuBtFAGlHXdD1b7XPTZu/cJTzFUMz1GEOnooV+JQlmYG8Z4hLven
 wpyKKVd6Euv1K07Fd8FRvA546CcKZcEbUxOg/12338CVNo5Y8HMn3OF/F8O4tahnC9DF
 gZw2pPNhTx3kDbhnOkJ50fh3UQunrRsJYfGK801sqSZUamu5ZqU+vxoBKPUyKnMU458k
 2RyjqTa7H34q2ryH+zMwOqjPkjcrFYqnWr88Up/zTcaOjzI5QJStj+hIi5IuV5cdQ07L
 kYLQ==
X-Gm-Message-State: APjAAAXOeqGl5O9okjs4p4mPXHX8Dh2fkIMcE/6izLPYM5EGdIUyvjSL
 WJGbfns8UXBNpqHhimEvafCOvw==
X-Google-Smtp-Source: APXvYqxIauiL13oUpxV81Yw9mPEJVigE5VceP3aF7sZGpUet2XmW8W0jTNx39PdZp5mLUTL7ce5yOw==
X-Received: by 2002:adf:edd0:: with SMTP id v16mr3920831wro.357.1582702564250; 
 Tue, 25 Feb 2020 23:36:04 -0800 (PST)
Received: from localhost (ip-89-177-130-96.net.upcbroadband.cz.
 [89.177.130.96])
 by smtp.gmail.com with ESMTPSA id q3sm1967095wrs.1.2020.02.25.23.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 23:36:03 -0800 (PST)
Date: Wed, 26 Feb 2020 08:36:02 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: David Miller <davem@davemloft.net>
Message-ID: <20200226073602.GB10533@nanopsycho>
References: <20200225121023.6011-1-jiri@resnulli.us>
 <469b51add666cf3df7381b6409a3972c70024c12.camel@intel.com>
 <20200225.132041.1071108395246034738.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225.132041.1071108395246034738.davem@davemloft.net>
Subject: Re: [Intel-wired-lan] [patch net-next] iavf: use
 tc_cls_can_offload_basic() instead of chain check
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VHVlLCBGZWIgMjUsIDIwMjAgYXQgMTA6MjA6NDFQTSBDRVQsIGRhdmVtQGRhdmVtbG9mdC5uZXQg
d3JvdGU6Cj5Gcm9tOiBKZWZmIEtpcnNoZXIgPGplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbT4K
PkRhdGU6IFR1ZSwgMjUgRmViIDIwMjAgMTM6MTU6NDYgLTA4MDAKPgo+PiBPbiBUdWUsIDIwMjAt
MDItMjUgYXQgMTM6MTAgKzAxMDAsIEppcmkgUGlya28gd3JvdGU6Cj4+PiBGcm9tOiBKaXJpIFBp
cmtvIDxqaXJpQG1lbGxhbm94LmNvbT4KPj4+IAo+Pj4gTG9va3MgbGlrZSB0aGUgaWF2ZiBjb2Rl
IGFjdHVhbGx5IGV4cGVyaWVuY2VkIGEgcmFjZSBjb25kaXRpb24sIHdoZW4KPj4+IGEKPj4+IGRl
dmVsb3BlciB0b29rIGNvZGUgYmVmb3JlIHRoZSBjaGVjayBmb3IgY2hhaW4gMCB3YXMgcHV0IHRv
IGhlbHBlci4KPj4+IFNvIHVzZSB0Y19jbHNfY2FuX29mZmxvYWRfYmFzaWMoKSBoZWxwZXIgaW5z
dGVhZCBvZiBkaXJlY3QgY2hlY2sgYW5kCj4+PiBtb3ZlIHRoZSBjaGVjayB0byBfY2IoKSBzbyB0
aGlzIGlzIHNpbWlsYXIgdG8gaTQwZSBjb2RlLgo+Pj4gCj4+PiBTaWduZWQtb2ZmLWJ5OiBKaXJp
IFBpcmtvIDxqaXJpQG1lbGxhbm94LmNvbT4KPj4gCj4+IEFja2VkLWJ5OiBKZWZmIEtpcnNoZXIg
PGplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbT4KPj4gCj4+IEdvIGFoZWFkIGFuZCBwaWNrIHRo
aXMgdXAgRGF2ZSwgdGhhbmtzIQo+Cj5IbW1tLCBKaXJpIHRoaXMgZG9lc24ndCBjb21waWxlPwoK
Q3JhcCA6LyBJIHNodWZmbGVkIHdpdGggdGhlIHBhdGNoZXMgdG9vIG11Y2guIFdpbGwgc2VuZCB2
Mi4gU29ycnkuCgo+Cj4gIENDIFtNXSAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX21haW4ubwo+ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYzog
SW4gZnVuY3Rpb24g4oCYaWF2Zl9zZXR1cF90Y19ibG9ja19jYuKAmToKPmRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmM6MzA4OTo3OiBlcnJvcjogaW1wbGljaXQgZGVj
bGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYdGNfY2xzX2Nhbl9vZmZsb2FkX2Jhc2lj4oCZOyBkaWQg
eW91IG1lYW4g4oCYdGNfY2xzX2NvbW1vbl9vZmZsb2FkX2luaXTigJk/IFstV2Vycm9yPWltcGxp
Y2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICBpZiAoIXRjX2Nsc19jYW5fb2ZmbG9hZF9iYXNp
YyhhZGFwdGVyLT5uZXRkZXYsIHR5cGVfZGF0YSkpCj4gICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+Cj4gICAgICAgdGNfY2xzX2NvbW1vbl9vZmZsb2FkX2luaXQKPgo+TWF5YmUgaXQgZG9l
cyBkZXBlbmQgdXBvbiBzb21ldGhpbmcgaW4gdGhlIHRjIGZpbHRlciBwYXRjaCBzZXJpZXM/Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
