Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5062CD79
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2019 19:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C395854DB;
	Tue, 28 May 2019 17:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vchca8Mi1BCU; Tue, 28 May 2019 17:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CCB4854C9;
	Tue, 28 May 2019 17:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67F2B1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6329D22FC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q7w1lNchaIaK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 17:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D8C7922621
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 17:19:01 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d14so3078844pls.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 10:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vgUukrIUAW33rXBEBk4q8j6YDX0VbSNRvM27fcNOQus=;
 b=qiIXD97ZvDql70kTKKS9X4xm3xxDOG35kgByIN/usE5C3DHxjZMHhJv+DHBHl8KBdO
 TCi0KVHo0oAQmtuu2Q8mD+pxDqAedfY6fUZywhgSHmzXR842hjutueEa/WhwBXsssThC
 RSIY/VZq60PYW4sXqtc/8hC4HBx0MSTEa2aMRAPKCommtvAjdsjGZXVFlsYZ+YGPMURz
 Sqy0X5PZO01U2T1Ydgy03yJNavka7E36iFy2jMGqHE/dNdRJRYo4fyo3rdDXShyYCJAw
 SC2jQcfbcKlGjyjc91nk9GvoooSsdOmkghKOAm+pqxYt/I5rUtWuhEC5Bn+Njhs4O/Fm
 MYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vgUukrIUAW33rXBEBk4q8j6YDX0VbSNRvM27fcNOQus=;
 b=TFm2lZP/Rr3iFNZ4EZ814BoG6+OwqyO/OukIX4qDnNmRp+s7z434qBL7rodzVoumGx
 cpwN0SRmaLDqeRwT33/L88JwS8vllQi902tbv7SL8AnETwq3lCeF2QutLa3tuQZrA/yJ
 0iBnmhlSSNccsYDAvMdaCs2vrD3/gFKhjoQ+B2FkZPoZGBlJmpzQTrlonTPbAAvVN9so
 fYACgWq3a0LUe5CBaIsnouyHVlKdTcS8vKkOLeKYT5S7VXl+KUwDhmJsm0Gu/u8qjOlx
 HzAQwL9G/9JM6G/F47QndQnDJiGt2YcNAVC6PQ3vQtzRyonY8o4TdAYqd79LpATGXZlJ
 9lbg==
X-Gm-Message-State: APjAAAVB5KHfnpaKDawlqfnJLH1p2VVpRXHIVZmPDVMYzs++aZuNLvHF
 WwEcxJaRj7PSxmlQIZwvDcU=
X-Google-Smtp-Source: APXvYqzA7CK7i0ADM4IDLYfQh8F06vK2xmlmKmhowjBNF8rKaCXnzMAhLikVyJirLNZmlN2o+bWiyw==
X-Received: by 2002:a17:902:27a8:: with SMTP id
 d37mr27735710plb.150.1559063941574; 
 Tue, 28 May 2019 10:19:01 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:55c7:81e6:c7d8:94b?
 ([2620:15c:2c1:200:55c7:81e6:c7d8:94b])
 by smtp.gmail.com with ESMTPSA id s27sm19253690pfd.18.2019.05.28.10.18.59
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 10:19:00 -0700 (PDT)
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <e070e241-fb65-a5b0-3155-7380a9203bcf@molgen.mpg.de>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <8627ea1e-8e51-c425-97f6-aeb57176e11a@gmail.com>
Date: Tue, 28 May 2019 10:18:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e070e241-fb65-a5b0-3155-7380a9203bcf@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Driver has suspect GRO implementation,
 TCP performance may be compromised.
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/19 8:42 AM, Paul Menzel wrote:
> Dear Linux folks,
> 
> 
> Occasionally, Linux outputs the message below on the workstation Dell
> OptiPlex 5040 MT.
> 
>     TCP: net00: Driver has suspect GRO implementation, TCP performance may be compromised.
> 
> Linux 4.14.55 and Linux 5.2-rc2 show the message, and the WWW also
> gives some hits [1][2].
> 
> ```
> $ sudo ethtool -i net00
> driver: e1000e
> version: 3.2.6-k
> firmware-version: 0.8-4
> expansion-rom-version: 
> bus-info: 0000:00:1f.6
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: no
> ```
> 
> Can the driver e1000e be improved?
> 
> Any idea, what triggers this, as I do not see it every boot? Download
> of big files?
>
Maybe the driver/NIC can receive frames bigger than MTU, although this would be strange.

diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
index c61edd023b352123e2a77465782e0d32689e96b0..cb0194f66125bcba427e6e7e3cacf0c93040ef61 100644
--- a/net/ipv4/tcp_input.c
+++ b/net/ipv4/tcp_input.c
@@ -150,8 +150,10 @@ static void tcp_gro_dev_warn(struct sock *sk, const struct sk_buff *skb,
                rcu_read_lock();
                dev = dev_get_by_index_rcu(sock_net(sk), skb->skb_iif);
                if (!dev || len >= dev->mtu)
-                       pr_warn("%s: Driver has suspect GRO implementation, TCP performance may be compromised.\n",
-                               dev ? dev->name : "Unknown driver");
+                       pr_warn("%s: Driver has suspect GRO implementation, TCP performance may be compromised."
+                               " len %u mtu %u\n",
+                               dev ? dev->name : "Unknown driver",
+                               len, dev ? dev->mtu : 0);
                rcu_read_unlock();
        }
 }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
