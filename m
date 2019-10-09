Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC70D1571
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 19:22:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88DDF204E1;
	Wed,  9 Oct 2019 17:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFcRJ8p87Ryu; Wed,  9 Oct 2019 17:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B81F204BE;
	Wed,  9 Oct 2019 17:22:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0A541BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 17:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A445A8784F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 17:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 315m4JmlWs6H for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 17:22:18 +0000 (UTC)
X-Greylist: delayed 00:22:56 by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6EA087784
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 17:22:18 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id v4so2038712pff.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2019 10:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=FWquouYqKBd7amD18urRls6Y6gtLx6j4gbRFX8vfpcA=;
 b=tyktbH9E1xZYVxbf2IRLPSbtOnJAiG0rW/0c5WCWbuy8c4r8FPIL0X55nHn53qkQpd
 N/0S+JB9m39QziSsYYKCAt0JSnU9ZCny5eS0E0tEEUUs5p8ASxnapxafcxo3iwTuogAO
 lewh/W1lUFpKc43PnicB0nJs4hSDJF/47m+ONJ6pGRydxBwaILK1HUmGWqgLQiHKgsBN
 Sgmga5tkGNm+JYjXzDP+5PJotOy0P/8CgN/GOFbUsnDIGrUh0gZwDhpwaL3n7/OoLspN
 TPJD813EHaDL77sT6jHyKq86NZHc+V0V+lIM86k95Rpb9eCTfmAlm3U2rC/cuQYVmwV3
 kUcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=FWquouYqKBd7amD18urRls6Y6gtLx6j4gbRFX8vfpcA=;
 b=hy2IZohVQI0nMqBGEankuDnGwjwAYOnILgC8fgfKs4dwPd3j6PgXURf0/kjmh8KY5R
 JB7FTE8D4XM/yQADHNE6EcyzivI3bjB186ZbxOwGPljW2GzbVR6l6GjRZebYH2ZLgVYO
 pTl6JfIXrTRJodZQRy7uoALEaoKDeOZBVtDYbNfuS1C/KHm8Sw9AuAO1k6d0Zx2OwYYh
 EFKSMA8qwRoMD1HZaU4RBcI7Tr6Z67dsCstqq9N4OaavFTLnDO0/CH8JmeZfxaif7Aqy
 J2Uq1WiTWPaZSQ3bRzV0lSvKZlpmuQzNNHaW295LledkXftSc4PUwENnRcVAprU3Njix
 as0w==
X-Gm-Message-State: APjAAAUm7ndsjuSpRVBv+K3GhxsxnUz/RQPzXSMzuyagcLjofqU4rc+k
 mmhWdKsqttFoOEKIomcfUQWIl0TLY4U=
X-Google-Smtp-Source: APXvYqz33xg6mGHwZzY2rBVPIF3+9OEjT1Iym8OqIXZgdg5lCtvXcB+wk3KGe6fY9b73P2JfvTAQ4g==
X-Received: by 2002:a17:90a:9e2:: with SMTP id 89mr5312445pjo.67.1570640051867; 
 Wed, 09 Oct 2019 09:54:11 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id r18sm4172935pfc.3.2019.10.09.09.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 09:54:11 -0700 (PDT)
Date: Wed, 9 Oct 2019 09:53:58 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20191009095358.34cddd95@cakuba.netronome.com>
In-Reply-To: <ce255470-6bf7-0ba4-c24f-0808e3331977@intel.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <20191008174919.2160737a@cakuba.netronome.com>
 <ce255470-6bf7-0ba4-c24f-0808e3331977@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/4] Enable direct receive on
 AF_XDP sockets
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, tom.herbert@intel.com, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 8 Oct 2019 23:29:59 -0700, Samudrala, Sridhar wrote:
> On 10/8/2019 5:49 PM, Jakub Kicinski wrote:
> > I asked you to add numbers for handling those use cases in the kernel
> > directly.  
> 
> Forgot to explicitly mention that I didn't see any regressions with 
> xdp1, xdp2 or xdpsock in default mode with these patches. Performance 
> remained the same.

I'm not looking for regressions. The in-kernel path is faster, and
should be used for speeding things up rather than a "direct path to
user space". Your comparison should have 3 numbers - current AF_XDP,
patched AF_XDP, in-kernel handling.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
